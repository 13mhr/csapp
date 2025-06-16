/* 
 * tsh - A tiny shell program with job control
 * 梅皓然  220110325
 * <Put your name and login ID here>
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
#include "csapp.h"

/* Misc manifest constants */
#define MAXLINE    1024   /* max line size */
#define MAXARGS     128   /* max args on a command line */
#define MAXJOBS      16   /* max jobs at any point in time */
#define MAXJID    1<<16   /* max job ID */

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/* 
 * Jobs states: FG (foreground), BG (background), ST (stopped)
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : fg command
 *     ST -> BG  : bg command
 *     BG -> FG  : fg command
 * At most 1 job can be in the FG state.
 */

/* Global variables */
extern char **environ;      /* defined in libc */
char prompt[] = "tsh> ";    /* command line prompt (DO NOT CHANGE) */
int verbose = 0;            /* if true, print additional output */
int nextjid = 1;            /* next job ID to allocate */
char sbuf[MAXLINE];         /* for composing sprintf messages */
volatile sig_atomic_t fg_reaped = 0; /* if fg process is reaped*/
struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* The job list */
/* End global variables */


/* Function prototypes */

/* Here are the functions that you will implement */
void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

/* Here are helper routines that we've provided for you */
int parseline(const char *cmdline, char **argv); 
void sigquit_handler(int sig);

void clearjob(struct job_t *job);
void initjobs(struct job_t *jobs);
int maxjid(struct job_t *jobs); 
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline);
int deletejob(struct job_t *jobs, pid_t pid); 
pid_t fgpid(struct job_t *jobs);
struct job_t *getjobpid(struct job_t *jobs, pid_t pid);
struct job_t *getjobjid(struct job_t *jobs, int jid); 
int pid2jid(pid_t pid); 
void listjobs(struct job_t *jobs);

void usage(void);
void unix_error(char *msg);
void app_error(char *msg);
typedef void handler_t(int);
handler_t *Signal(int signum, handler_t *handler);

/*
 * main - The shell's main routine 
 */
int main(int argc, char **argv) 
{
    char c;
    char cmdline[MAXLINE];
    int emit_prompt = 1; /* emit prompt (default) */

    /* Redirect stderr to stdout (so that driver will get all output
     * on the pipe connected to stdout) */
    dup2(1, 2);

    /* Parse the command line */
    while ((c = getopt(argc, argv, "hvp")) != EOF) {
        switch (c) {
        case 'h':             /* print help message */
            usage();
	    break;
        case 'v':             /* emit additional diagnostic info */
            verbose = 1;
	    break;
        case 'p':             /* don't print a prompt */
            emit_prompt = 0;  /* handy for automatic testing */
	    break;
	default:
            usage();
	}
    }

    /* Install the signal handlers */

    /* These are the ones you will need to implement */
    Signal(SIGINT,  sigint_handler);   /* ctrl-c */
    Signal(SIGTSTP, sigtstp_handler);  /* ctrl-z */
    Signal(SIGCHLD, sigchld_handler);  /* Terminated or stopped child */

    /* This one provides a clean way to kill the shell */
    Signal(SIGQUIT, sigquit_handler); 

    /* Initialize the job list */
    initjobs(jobs);

    /* Execute the shell's read/eval loop */
    while (1) {

	/* Read command line */
	if (emit_prompt) {
	    printf("%s", prompt);
	    fflush(stdout);
	}
	if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin))
	    app_error("fgets error");
	if (feof(stdin)) { /* End of file (ctrl-d) */
	    fflush(stdout);
	    exit(0);
	}

	/* Evaluate the command line */
	eval(cmdline);
	fflush(stdout);
	fflush(stdout);
    } 

    exit(0); /* control never reaches here */
}
  
/* 
 * eval - Evaluate the command line that the user has just typed in
 * 
 * If the user has requested a built-in command (quit, jobs, bg or fg)
 * then execute it immediately. Otherwise, fork a child process and
 * run the job in the context of the child. If the job is running in
 * the foreground, wait for it to terminate and then return.  Note:
 * each child process must have a unique process group ID so that our
 * background children don't receive SIGINT (SIGTSTP) from the kernel
 * when we type ctrl-c (ctrl-z) at the keyboard.  
*/
void eval(char *cmdline) 
{
    char* argv[MAXARGS];  // 命令参数数组
    int bg;  // 后台运行标志
    pid_t child_pid;  // 子进程 PID
    int jid;   // 作业号

    // 解析命令行，将命令和参数存入 argv，判断是否后台运行
    bg = parseline(cmdline, argv);

    // 执行，若为内置命令，直接在builtin_cmd()中执行完成。
    if (!builtin_cmd(argv))
    {
        // 非内置命令，创建子进程执行命令
        
        // 定义信号集：child_mask 用于阻塞 SIGCHLD，all_mask 为全部阻塞
        sigset_t child_mask, all_mask, prev_mask;
        Sigemptyset(&child_mask);
        Sigaddset(&child_mask, SIGCHLD);  
        Sigfillset(&all_mask);
        
        // 阻塞 SIGCHLD，防止子进程还没 addjob 就已经退出
        Sigprocmask(SIG_BLOCK, &child_mask, &prev_mask);
        
        // 创建子进程
        if ((child_pid = Fork()) == 0)
        {
            // child
            Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
            
            // 设置子进程为新进程组 leader，防止和 shell 一起被信号影响
            setpgid(0,0); 
            if (execve(argv[0], argv, environ) < 0) 
            {
                // execve 失败，输出错误信息
                sprintf(sbuf, "%s: Command not found\n", argv[0]);
                sio_puts(sbuf);
                exit(0);
            }
        }
        else
        {
            // 父进程（shell）
            
            // 临时屏蔽所有信号，防止中间 addjob 过程中出现竞态
            Sigprocmask(SIG_SETMASK, &all_mask, NULL);
            
            // 添加子进程到作业列表，记录其状态（前台或后台）
            int status = bg ? BG : FG;
            if (addjob(jobs, child_pid, status, cmdline) == 0)
            {
                // 添加作业失败，恢复信号并返回
                Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
                return;
            }
            
            // 获取作业号
            jid = pid2jid(child_pid);
            
            // 恢复原来的信号屏蔽字
            Sigprocmask(SIG_SETMASK, &prev_mask, NULL);

            if (!bg) waitfg(child_pid);  // 如果是前台作业，则等待其完成
            else
            {
                // 后台作业，输出其作业号和 PID
                sprintf(sbuf ,"[%d] (%d) %s", jid, child_pid, cmdline);
                sio_puts(sbuf);
            }
        }
    }

    return;
}

/* 
 * parseline - Parse the command line and build the argv array.
 * 
 * Characters enclosed in single quotes are treated as a single
 * argument.  Return true if the user has requested a BG job, false if
 * the user has requested a FG job.  
 */
int parseline(const char *cmdline, char **argv) 
{
    static char array[MAXLINE]; /* holds local copy of command line */
    char *buf = array;          /* ptr that traverses command line */
    char *delim;                /* points to first space delimiter */
    int argc;                   /* number of args */
    int bg;                     /* background job? */

    strcpy(buf, cmdline);
    buf[strlen(buf)-1] = ' ';  /* replace trailing '\n' with space */
    while (*buf && (*buf == ' ')) /* ignore leading spaces */
	buf++;

    /* Build the argv list */
    argc = 0;
    if (*buf == '\'') {
	buf++;
	delim = strchr(buf, '\'');
    }
    else {
	delim = strchr(buf, ' ');
    }

    while (delim) {
	argv[argc++] = buf;
	*delim = '\0';
	buf = delim + 1;
	while (*buf && (*buf == ' ')) /* ignore spaces */
	       buf++;

	if (*buf == '\'') {
	    buf++;
	    delim = strchr(buf, '\'');
	}
	else {
	    delim = strchr(buf, ' ');
	}
    }
    argv[argc] = NULL;
    
    if (argc == 0)  /* ignore blank line */
	return 1;

    /* should the job run in the background? */
    if ((bg = (*argv[argc-1] == '&')) != 0) {
	argv[--argc] = NULL;
    }
    return bg;
}

/* 
 * builtin_cmd - If the user has typed a built-in command then execute
 *    it immediately.  
 */
int builtin_cmd(char **argv) 
{  
    // 定义用于临时阻塞所有信号的信号集
    sigset_t all_mask, prev_mask;
    Sigfillset(&all_mask);  // all_mask 包含所有信号
    
    // 处理内置命令 "jobs"
    if (!strcmp(argv[0], "jobs"))
    {    
        // 在 listjobs 期间阻塞信号，防止与 SIGCHLD 等信号产生竞态
        Sigprocmask(SIG_SETMASK, &all_mask, &prev_mask);
        listjobs(jobs);
        Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
        return 1;
    }
     // 处理内置命令 "bg" 或 "fg"
    else if (!strcmp(argv[0], "bg") || !strcmp(argv[0], "fg"))
    {
        do_bgfg(argv);   // 切换作业到后台或前台
        return 1;
    }
    else if (!strcmp(argv[0], "quit")) exit(0);  // 处理内置命令 "quit"
    return 0;     /* not a builtin command */
}

/* 
 * do_bgfg - Execute the builtin bg and fg commands
 */
void do_bgfg(char **argv)  
{
    pid_t pid;                  // 作业对应的进程号
    int jid, paramcnt = 0;      // jid：作业号，paramcnt：参数个数
    struct job_t* job;          // 指向当前操作的作业结构

    // 统计参数数量
    while(argv[paramcnt++] != NULL);
    paramcnt--;

    // 参数数量检查（必须为 2：命令 + 作业标识）
    if (paramcnt < 2)
    {
        // 缺少参数，提示需要 PID 或 %jobid
        sprintf(sbuf, "%s command requires PID or %%jobid argument\n", argv[0]);
        sio_puts(sbuf);
        return;
    }
    else if (paramcnt > 2)
    {
        // 参数过多，仅接受一个作业标识
        sprintf(sbuf, "%s received too many arguments, expect 1\n", argv[0]);
        sio_puts(sbuf);
        return;
    }

    // 屏蔽所有信号，避免访问作业列表时被打断
    sigset_t all_mask, prev_mask;
    Sigfillset(&all_mask);
    Sigprocmask(SIG_SETMASK, &all_mask, &prev_mask);

    // 解析 %jobid 或 PID
    if (*(argv[1]) == '%')
    {
        // 参数以 '%' 开头，说明是 job ID
        jid = atoi(argv[1] + 1);  // 去掉 '%' 后转换为整数
        if (jid == 0)
        {
            // 参数格式错误
            sprintf(sbuf, "%s: argument must be a PID or %%jobid\n", argv[0]);
            sio_puts(sbuf);
            Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
            return;
        }

        // 通过作业号获取对应的 PID
        pid = jid2pid(jid);
        if (pid == 0)
        {
            // 找不到该作业
            sprintf(sbuf, "%%%d: No such job\n", jid);
            sio_puts(sbuf);
            Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
            return;
        }
    }
    else
    {
        // 直接输入的是 PID
        pid = atoi(argv[1]);
        if (pid == 0)
        {
            // 非法 PID 参数
            sprintf(sbuf, "%s: argument must be a PID or %%jobid\n", argv[0]);
            sio_puts(sbuf);
            Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
            return;
        }
    }

    // 查找该进程是否存在于作业列表中
    if ((job = getjobpid(jobs, pid)) == NULL)
    {
        sprintf(sbuf, "(%d): No such process\n", pid);
        sio_puts(sbuf);
        Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
        return;
    }

    // 对作业执行操作（bg 或 fg）
    if (!strcmp(argv[0], "bg"))
    {
        // 后台运行：发送 SIGCONT 信号恢复作业执行
        Kill(-pid, SIGCONT);     // 使用负号表示向整个进程组发送信号
        job->state = BG;         // 更新作业状态为后台
        // 不阻塞 shell，继续接受命令
        Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    }
    else
    {
        // 前台运行：发送 SIGCONT 后等待其结束
        Kill(-pid, SIGCONT);     // 恢复作业执行
        job->state = FG;         // 更新作业状态为前台
        Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
        waitfg(pid);             // 阻塞 shell 直到前台作业执行完毕
    }

    return;
}

/*
 * waitfg - Block until process pid is no longer the foreground process
 */
void waitfg(pid_t pid) 
{ 
    // 用于等待前台作业完成（由子进程终止或停止触发 SIGCHLD 信号）

    sigset_t mask, prev_mask;

    // 初始化信号集 mask，并将 SIGCHLD 加入屏蔽集
    Sigemptyset(&mask);
    Sigaddset(&mask, SIGCHLD);

    // 屏蔽 SIGCHLD，防止竞争条件（handler 提前修改 fg_reaped）
    Sigprocmask(SIG_BLOCK, &mask, &prev_mask);

    // 使用轮询+信号挂起等待的方式等待前台进程结束
    // fg_reaped 会在 sigchld_handler 中被置为 1
    while (!fg_reaped) 
        Sigsuspend(&prev_mask);  // 原子地恢复原信号集并挂起进程直到收到信号

    // 被回收后重置标志位，准备下一次前台作业执行
    fg_reaped = 0; // 非共享资源，单线程修改，安全

    // 恢复原先的信号屏蔽状态
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);

    return;
}



/*****************
 * Signal handlers
 *****************/

/* 
 * sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
 *     a child job terminates (becomes a zombie), or stops because it
 *     received a SIGSTOP or SIGTSTP signal. The handler reaps all
 *     available zombie children, but doesn't wait for any other
 *     currently running children to terminate.  
 */
void sigchld_handler(int sig) 
{    
    // 屏蔽所有信号，防止在处理过程中被中断，保证处理过程的原子性
    sigset_t all_mask, prev_mask;
    Sigfillset(&all_mask);
    Sigprocmask(SIG_SETMASK, &all_mask, &prev_mask);

    int old_errno = errno;  // 保存 errno，防止被 waitpid 修改
    int status;
    pid_t pid, fg_pid = fgpid(jobs);  // 获取当前前台作业的 PID
    struct job_t* job;

    // 使用 waitpid 回收所有已终止、停止或继续的子进程
    while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED | WCONTINUED)) > 0)
    {
        // 如果是前台进程，标记已回收，供 waitfg 检测
        if (pid == fg_pid) 
            fg_reaped = 1;

        // 获取该进程对应的作业结构
        job = getjobpid(jobs, pid);

        // 情况 1：子进程因信号（如 Ctrl-C）终止
        if (WIFSIGNALED(status) && WTERMSIG(status) == SIGINT) {
            sprintf(sbuf,"Job [%d] (%d) terminated by signal %d\n", job->jid, pid, SIGINT);
            sio_puts(sbuf);
            deletejob(jobs, pid);  // 从作业表中删除
        } 
        // 情况 2：子进程被停止（如 Ctrl-Z）
        else if (WIFSTOPPED(status)) {
            job->state = ST;  // 修改作业状态为停止
            if (WSTOPSIG(status) == SIGTSTP) {
                sprintf(sbuf,"Job [%d] (%d) stopped by signal %d\n", job->jid, pid, SIGTSTP);
                sio_puts(sbuf);
            }
        } 
        // 情况 3：子进程被继续（如 bg/fg 指令发出 SIGCONT）
        else if (WIFCONTINUED(status) && job->state == BG) {
            sprintf(sbuf,"[%d] (%d) %s", job->jid, pid, job->cmdline);
            sio_puts(sbuf);
        } 
        // 情况 4：子进程正常退出
        else if (WIFEXITED(status)) {
            deletejob(jobs, pid);  // 清除作业信息
        }
    }

    errno = old_errno;  // 恢复 errno

    // 恢复原信号屏蔽集合
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    return;
}

/* 
 * sigint_handler - The kernel sends a SIGINT to the shell whenver the
 *    user types ctrl-c at the keyboard.  Catch it and send it along
 *    to the foreground job.  
 */
void sigint_handler(int sig) 
{    
    // jobs列表的状态和进程信息由sigchild handler维护
    sigset_t all_mask, prev_mask;
    Sigfillset(&all_mask);
    Sigprocmask(SIG_SETMASK, &all_mask, &prev_mask);
    
    pid_t fg_pid = fgpid(jobs);
    if (fg_pid == 0)
    {
         Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
         return;
    }
    Kill(-fg_pid, sig);
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    return;
}

/*
 * sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
 *     the user types ctrl-z at the keyboard. Catch it and suspend the
 *     foreground job by sending it a SIGTSTP.  
 */
void sigtstp_handler(int sig) 
{    
    // jobs列表的状态由sigchild handler维护
    sigset_t all_mask, prev_mask;
    Sigfillset(&all_mask);
    Sigprocmask(SIG_SETMASK, &all_mask, &prev_mask);
    
    pid_t fg_pid = fgpid(jobs);
    if (fg_pid == 0)
    {
         Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
         return;
    }
    Kill(-fg_pid, sig);
    Sigprocmask(SIG_SETMASK, &prev_mask, NULL);
    return;
}

/*********************
 * End signal handlers
 *********************/

/***********************************************
 * Helper routines that manipulate the job list
 **********************************************/

/* clearjob - Clear the entries in a job struct */
void clearjob(struct job_t *job) {
    job->pid = 0;
    job->jid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - Initialize the job list */
void initjobs(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	clearjob(&jobs[i]);
}

/* maxjid - Returns largest allocated job ID */
int maxjid(struct job_t *jobs) 
{
    int i, max=0;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid > max)
	    max = jobs[i].jid;
    return max;
}

/* addjob - Add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline) 
{
    int i;
    
    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == 0) {
	    jobs[i].pid = pid;
	    jobs[i].state = state;
	    jobs[i].jid = nextjid++;
	    if (nextjid > MAXJOBS)
		nextjid = 1;
	    strcpy(jobs[i].cmdline, cmdline);
  	    if(verbose){
	        printf("Added job [%d] %d %s\n", jobs[i].jid, jobs[i].pid, jobs[i].cmdline);
            }
            return 1;
	}
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - Delete a job whose PID=pid from the job list */
int deletejob(struct job_t *jobs, pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == pid) {
	    clearjob(&jobs[i]);
	    nextjid = maxjid(jobs)+1;
	    return 1;
	}
    }
    return 0;
}

/* fgpid - Return PID of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].state == FG)
	    return jobs[i].pid;
    return 0;
}

/* getjobpid  - Find a job (by PID) on the job list */
struct job_t *getjobpid(struct job_t *jobs, pid_t pid) {
    int i;

    if (pid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid)
	    return &jobs[i];
    return NULL;
}

/* getjobjid  - Find a job (by JID) on the job list */
struct job_t *getjobjid(struct job_t *jobs, int jid) 
{
    int i;

    if (jid < 1)
	return NULL;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].jid == jid)
	    return &jobs[i];
    return NULL;
}

/* pid2jid - Map process ID to job ID */
int pid2jid(pid_t pid) 
{
    int i;

    if (pid < 1)
	return 0;
    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid) {
            return jobs[i].jid;
        }
    return 0;
}
int jid2pid(int jid)
{
    int i;

    if (jid < 1)
        return 0;
    for (i = 0; i < MAXJOBS; i++)
        if (jobs[i].jid == jid)
        {
            return jobs[i].pid;
        }
    return 0;
}
/* listjobs - Print the job list */
void listjobs(struct job_t *jobs) 
{
    int i;
    
    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid != 0) {
	    printf("[%d] (%d) ", jobs[i].jid, jobs[i].pid);
	    switch (jobs[i].state) {
		case BG: 
		    printf("Running ");
		    break;
		case FG: 
		    printf("Foreground ");
		    break;
		case ST: 
		    printf("Stopped ");
		    break;
	    default:
		    printf("listjobs: Internal error: job[%d].state=%d ", 
			   i, jobs[i].state);
	    }
	    printf("%s", jobs[i].cmdline);
	}
    }
}
/******************************
 * end job list helper routines
 ******************************/


/***********************
 * Other helper routines
 ***********************/

/*
 * usage - print a help message
 */
void usage(void) 
{
    printf("Usage: shell [-hvp]\n");
    printf("   -h   print this message\n");
    printf("   -v   print additional diagnostic information\n");
    printf("   -p   do not emit a command prompt\n");
    exit(1);
}

/*
 * unix_error - unix-style error routine
 */
// void unix_error(char *msg)
// {
//     fprintf(stdout, "%s: %s\n", msg, strerror(errno));
//     exit(1);
// }

/*
 * app_error - application-style error routine
 */
// void app_error(char *msg)
// {
//     fprintf(stdout, "%s\n", msg);
//     exit(1);
// }

/*
 * Signal - wrapper for the sigaction function
 */
// handler_t *Signal(int signum, handler_t *handler) 
// {
//     struct sigaction action, old_action;

//     action.sa_handler = handler;  
//     sigemptyset(&action.sa_mask); /* block sigs of type being handled */
//     action.sa_flags = SA_RESTART; /* restart syscalls if possible */

//     if (sigaction(signum, &action, &old_action) < 0)
// 	unix_error("Signal error");
//     return (old_action.sa_handler);
// }

/*
 * sigquit_handler - The driver program can gracefully terminate the
 *    child shell by sending it a SIGQUIT signal.
 */
void sigquit_handler(int sig) 
{
    printf("Terminating after receipt of SIGQUIT signal\n");
    exit(1);
}


