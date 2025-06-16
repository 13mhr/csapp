
bufbomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 3f 00 00 	mov    0x3fe9(%rip),%rax        # 404ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <strcasecmp@plt-0x10>:
  401020:	ff 35 e2 3f 00 00    	push   0x3fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 3f 00 00    	jmp    *0x3fe4(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <strcasecmp@plt>:
  401030:	ff 25 e2 3f 00 00    	jmp    *0x3fe2(%rip)        # 405018 <strcasecmp@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 3f 00 00    	jmp    *0x3fda(%rip)        # 405020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <srandom@plt>:
  401050:	ff 25 d2 3f 00 00    	jmp    *0x3fd2(%rip)        # 405028 <srandom@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strcpy@plt>:
  401060:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 405030 <strcpy@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <puts@plt>:
  401070:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 405038 <puts@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <write@plt>:
  401080:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 405040 <write@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <getpid@plt>:
  401090:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 405048 <getpid@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <strlen@plt>:
  4010a0:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 405050 <strlen@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <__stack_chk_fail@plt>:
  4010b0:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 405058 <__stack_chk_fail@GLIBC_2.4>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <mmap@plt>:
  4010c0:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 405060 <mmap@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <htons@plt>:
  4010d0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 405068 <htons@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <printf@plt>:
  4010e0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 405070 <printf@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <memset@plt>:
  4010f0:	ff 25 82 3f 00 00    	jmp    *0x3f82(%rip)        # 405078 <memset@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <alarm@plt>:
  401100:	ff 25 7a 3f 00 00    	jmp    *0x3f7a(%rip)        # 405080 <alarm@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <close@plt>:
  401110:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 405088 <close@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <read@plt>:
  401120:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 405090 <read@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <srand@plt>:
  401130:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 405098 <srand@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <calloc@plt>:
  401140:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 4050a0 <calloc@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <strcmp@plt>:
  401150:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 4050a8 <strcmp@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <signal@plt>:
  401160:	ff 25 4a 3f 00 00    	jmp    *0x3f4a(%rip)        # 4050b0 <signal@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <gethostbyname@plt>:
  401170:	ff 25 42 3f 00 00    	jmp    *0x3f42(%rip)        # 4050b8 <gethostbyname@GLIBC_2.2.5>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <memcpy@plt>:
  401180:	ff 25 3a 3f 00 00    	jmp    *0x3f3a(%rip)        # 4050c0 <memcpy@GLIBC_2.14>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401190 <random@plt>:
  401190:	ff 25 32 3f 00 00    	jmp    *0x3f32(%rip)        # 4050c8 <random@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011a0 <__isoc99_sscanf@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmp    *0x3f2a(%rip)        # 4050d0 <__isoc99_sscanf@GLIBC_2.7>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011b0 <munmap@plt>:
  4011b0:	ff 25 22 3f 00 00    	jmp    *0x3f22(%rip)        # 4050d8 <munmap@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011c0 <memmove@plt>:
  4011c0:	ff 25 1a 3f 00 00    	jmp    *0x3f1a(%rip)        # 4050e0 <memmove@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011d0 <getopt@plt>:
  4011d0:	ff 25 12 3f 00 00    	jmp    *0x3f12(%rip)        # 4050e8 <getopt@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011e0 <gethostname@plt>:
  4011e0:	ff 25 0a 3f 00 00    	jmp    *0x3f0a(%rip)        # 4050f0 <gethostname@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <_init+0x20>

00000000004011f0 <sprintf@plt>:
  4011f0:	ff 25 02 3f 00 00    	jmp    *0x3f02(%rip)        # 4050f8 <sprintf@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401200 <exit@plt>:
  401200:	ff 25 fa 3e 00 00    	jmp    *0x3efa(%rip)        # 405100 <exit@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401210 <connect@plt>:
  401210:	ff 25 f2 3e 00 00    	jmp    *0x3ef2(%rip)        # 405108 <connect@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401220 <fwrite@plt>:
  401220:	ff 25 ea 3e 00 00    	jmp    *0x3eea(%rip)        # 405110 <fwrite@GLIBC_2.2.5>
  401226:	68 1f 00 00 00       	push   $0x1f
  40122b:	e9 f0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401230 <strdup@plt>:
  401230:	ff 25 e2 3e 00 00    	jmp    *0x3ee2(%rip)        # 405118 <strdup@GLIBC_2.2.5>
  401236:	68 20 00 00 00       	push   $0x20
  40123b:	e9 e0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401240 <getc@plt>:
  401240:	ff 25 da 3e 00 00    	jmp    *0x3eda(%rip)        # 405120 <getc@GLIBC_2.2.5>
  401246:	68 21 00 00 00       	push   $0x21
  40124b:	e9 d0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401250 <rand@plt>:
  401250:	ff 25 d2 3e 00 00    	jmp    *0x3ed2(%rip)        # 405128 <rand@GLIBC_2.2.5>
  401256:	68 22 00 00 00       	push   $0x22
  40125b:	e9 c0 fd ff ff       	jmp    401020 <_init+0x20>

0000000000401260 <socket@plt>:
  401260:	ff 25 ca 3e 00 00    	jmp    *0x3eca(%rip)        # 405130 <socket@GLIBC_2.2.5>
  401266:	68 23 00 00 00       	push   $0x23
  40126b:	e9 b0 fd ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401270 <_start>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	31 ed                	xor    %ebp,%ebp
  401276:	49 89 d1             	mov    %rdx,%r9
  401279:	5e                   	pop    %rsi
  40127a:	48 89 e2             	mov    %rsp,%rdx
  40127d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401281:	50                   	push   %rax
  401282:	54                   	push   %rsp
  401283:	45 31 c0             	xor    %r8d,%r8d
  401286:	31 c9                	xor    %ecx,%ecx
  401288:	48 c7 c7 f3 19 40 00 	mov    $0x4019f3,%rdi
  40128f:	ff 15 5b 3d 00 00    	call   *0x3d5b(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.34>
  401295:	f4                   	hlt    
  401296:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40129d:	00 00 00 

00000000004012a0 <_dl_relocate_static_pie>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	c3                   	ret    
  4012a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4012ac:	00 00 00 
  4012af:	90                   	nop

00000000004012b0 <deregister_tm_clones>:
  4012b0:	b8 c8 51 40 00       	mov    $0x4051c8,%eax
  4012b5:	48 3d c8 51 40 00    	cmp    $0x4051c8,%rax
  4012bb:	74 13                	je     4012d0 <deregister_tm_clones+0x20>
  4012bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c2:	48 85 c0             	test   %rax,%rax
  4012c5:	74 09                	je     4012d0 <deregister_tm_clones+0x20>
  4012c7:	bf c8 51 40 00       	mov    $0x4051c8,%edi
  4012cc:	ff e0                	jmp    *%rax
  4012ce:	66 90                	xchg   %ax,%ax
  4012d0:	c3                   	ret    
  4012d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <register_tm_clones>:
  4012e0:	be c8 51 40 00       	mov    $0x4051c8,%esi
  4012e5:	48 81 ee c8 51 40 00 	sub    $0x4051c8,%rsi
  4012ec:	48 89 f0             	mov    %rsi,%rax
  4012ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4012f3:	48 c1 f8 03          	sar    $0x3,%rax
  4012f7:	48 01 c6             	add    %rax,%rsi
  4012fa:	48 d1 fe             	sar    %rsi
  4012fd:	74 11                	je     401310 <register_tm_clones+0x30>
  4012ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401304:	48 85 c0             	test   %rax,%rax
  401307:	74 07                	je     401310 <register_tm_clones+0x30>
  401309:	bf c8 51 40 00       	mov    $0x4051c8,%edi
  40130e:	ff e0                	jmp    *%rax
  401310:	c3                   	ret    
  401311:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401318:	00 00 00 00 
  40131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401320 <__do_global_dtors_aux>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	80 3d fd 3e 00 00 00 	cmpb   $0x0,0x3efd(%rip)        # 405228 <completed.0>
  40132b:	75 13                	jne    401340 <__do_global_dtors_aux+0x20>
  40132d:	55                   	push   %rbp
  40132e:	48 89 e5             	mov    %rsp,%rbp
  401331:	e8 7a ff ff ff       	call   4012b0 <deregister_tm_clones>
  401336:	c6 05 eb 3e 00 00 01 	movb   $0x1,0x3eeb(%rip)        # 405228 <completed.0>
  40133d:	5d                   	pop    %rbp
  40133e:	c3                   	ret    
  40133f:	90                   	nop
  401340:	c3                   	ret    
  401341:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401348:	00 00 00 00 
  40134c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401350 <frame_dummy>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	eb 8a                	jmp    4012e0 <register_tm_clones>

0000000000401356 <RAND_FUNC>:
  401356:	55                   	push   %rbp
  401357:	48 89 e5             	mov    %rsp,%rbp
  40135a:	48 83 ec 40          	sub    $0x40,%rsp
  40135e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401365:	00 00 
  401367:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40136b:	31 c0                	xor    %eax,%eax
  40136d:	48 b8 50 72 6f 63 65 	movabs $0x65737365636f7250,%rax
  401374:	73 73 65 
  401377:	48 ba 73 20 61 72 65 	movabs $0x6373206572612073,%rdx
  40137e:	20 73 63 
  401381:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401385:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  401389:	48 b8 68 65 64 75 6c 	movabs $0x2064656c75646568,%rax
  401390:	65 64 20 
  401393:	48 ba 61 75 74 6f 6d 	movabs $0x6974616d6f747561,%rdx
  40139a:	61 74 69 
  40139d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4013a1:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4013a5:	48 b8 63 61 6c 6c 79 	movabs $0x796220796c6c6163,%rax
  4013ac:	20 62 79 
  4013af:	48 ba 20 74 68 65 20 	movabs $0x72656b2065687420,%rdx
  4013b6:	6b 65 72 
  4013b9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4013bd:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4013c1:	c7 45 f0 6e 65 6c 2e 	movl   $0x2e6c656e,-0x10(%rbp)
  4013c8:	c6 45 f4 00          	movb   $0x0,-0xc(%rbp)
  4013cc:	0f b6 45 f5          	movzbl -0xb(%rbp),%eax
  4013d0:	88 45 c0             	mov    %al,-0x40(%rbp)
  4013d3:	90                   	nop
  4013d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4013d8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4013df:	00 00 
  4013e1:	74 05                	je     4013e8 <RAND_FUNC+0x92>
  4013e3:	e8 c8 fc ff ff       	call   4010b0 <__stack_chk_fail@plt>
  4013e8:	c9                   	leave  
  4013e9:	c3                   	ret    

00000000004013ea <smoke>:
  4013ea:	55                   	push   %rbp
  4013eb:	48 89 e5             	mov    %rsp,%rbp
  4013ee:	bf 08 30 40 00       	mov    $0x403008,%edi
  4013f3:	e8 78 fc ff ff       	call   401070 <puts@plt>
  4013f8:	bf 00 00 00 00       	mov    $0x0,%edi
  4013fd:	e8 0f 0a 00 00       	call   401e11 <validate>
  401402:	bf 00 00 00 00       	mov    $0x0,%edi
  401407:	e8 f4 fd ff ff       	call   401200 <exit@plt>

000000000040140c <fizz>:
  40140c:	55                   	push   %rbp
  40140d:	48 89 e5             	mov    %rsp,%rbp
  401410:	48 83 ec 10          	sub    $0x10,%rsp
  401414:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401417:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40141a:	8b 05 38 3e 00 00    	mov    0x3e38(%rip),%eax        # 405258 <cookie>
  401420:	39 c2                	cmp    %eax,%edx
  401422:	75 20                	jne    401444 <fizz+0x38>
  401424:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401427:	89 c6                	mov    %eax,%esi
  401429:	bf 23 30 40 00       	mov    $0x403023,%edi
  40142e:	b8 00 00 00 00       	mov    $0x0,%eax
  401433:	e8 a8 fc ff ff       	call   4010e0 <printf@plt>
  401438:	bf 01 00 00 00       	mov    $0x1,%edi
  40143d:	e8 cf 09 00 00       	call   401e11 <validate>
  401442:	eb 14                	jmp    401458 <fizz+0x4c>
  401444:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401447:	89 c6                	mov    %eax,%esi
  401449:	bf 48 30 40 00       	mov    $0x403048,%edi
  40144e:	b8 00 00 00 00       	mov    $0x0,%eax
  401453:	e8 88 fc ff ff       	call   4010e0 <printf@plt>
  401458:	bf 00 00 00 00       	mov    $0x0,%edi
  40145d:	e8 9e fd ff ff       	call   401200 <exit@plt>

0000000000401462 <bang>:
  401462:	55                   	push   %rbp
  401463:	48 89 e5             	mov    %rsp,%rbp
  401466:	48 83 ec 10          	sub    $0x10,%rsp
  40146a:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40146d:	8b 05 ed 3d 00 00    	mov    0x3ded(%rip),%eax        # 405260 <global_value>
  401473:	89 c2                	mov    %eax,%edx
  401475:	8b 05 dd 3d 00 00    	mov    0x3ddd(%rip),%eax        # 405258 <cookie>
  40147b:	39 c2                	cmp    %eax,%edx
  40147d:	75 23                	jne    4014a2 <bang+0x40>
  40147f:	8b 05 db 3d 00 00    	mov    0x3ddb(%rip),%eax        # 405260 <global_value>
  401485:	89 c6                	mov    %eax,%esi
  401487:	bf 68 30 40 00       	mov    $0x403068,%edi
  40148c:	b8 00 00 00 00       	mov    $0x0,%eax
  401491:	e8 4a fc ff ff       	call   4010e0 <printf@plt>
  401496:	bf 02 00 00 00       	mov    $0x2,%edi
  40149b:	e8 71 09 00 00       	call   401e11 <validate>
  4014a0:	eb 17                	jmp    4014b9 <bang+0x57>
  4014a2:	8b 05 b8 3d 00 00    	mov    0x3db8(%rip),%eax        # 405260 <global_value>
  4014a8:	89 c6                	mov    %eax,%esi
  4014aa:	bf 8d 30 40 00       	mov    $0x40308d,%edi
  4014af:	b8 00 00 00 00       	mov    $0x0,%eax
  4014b4:	e8 27 fc ff ff       	call   4010e0 <printf@plt>
  4014b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4014be:	e8 3d fd ff ff       	call   401200 <exit@plt>

00000000004014c3 <test>:
  4014c3:	55                   	push   %rbp
  4014c4:	48 89 e5             	mov    %rsp,%rbp
  4014c7:	48 83 ec 10          	sub    $0x10,%rsp
  4014cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4014d0:	e8 07 05 00 00       	call   4019dc <uniqueval>
  4014d5:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4014d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4014dd:	e8 56 07 00 00       	call   401c38 <getbuf>
  4014e2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4014e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ea:	e8 ed 04 00 00       	call   4019dc <uniqueval>
  4014ef:	8b 55 f8             	mov    -0x8(%rbp),%edx
  4014f2:	39 d0                	cmp    %edx,%eax
  4014f4:	74 0c                	je     401502 <test+0x3f>
  4014f6:	bf b0 30 40 00       	mov    $0x4030b0,%edi
  4014fb:	e8 70 fb ff ff       	call   401070 <puts@plt>
  401500:	eb 41                	jmp    401543 <test+0x80>
  401502:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401505:	8b 05 4d 3d 00 00    	mov    0x3d4d(%rip),%eax        # 405258 <cookie>
  40150b:	39 c2                	cmp    %eax,%edx
  40150d:	75 20                	jne    40152f <test+0x6c>
  40150f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401512:	89 c6                	mov    %eax,%esi
  401514:	bf d9 30 40 00       	mov    $0x4030d9,%edi
  401519:	b8 00 00 00 00       	mov    $0x0,%eax
  40151e:	e8 bd fb ff ff       	call   4010e0 <printf@plt>
  401523:	bf 03 00 00 00       	mov    $0x3,%edi
  401528:	e8 e4 08 00 00       	call   401e11 <validate>
  40152d:	eb 14                	jmp    401543 <test+0x80>
  40152f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401532:	89 c6                	mov    %eax,%esi
  401534:	bf f6 30 40 00       	mov    $0x4030f6,%edi
  401539:	b8 00 00 00 00       	mov    $0x0,%eax
  40153e:	e8 9d fb ff ff       	call   4010e0 <printf@plt>
  401543:	90                   	nop
  401544:	c9                   	leave  
  401545:	c3                   	ret    

0000000000401546 <testn>:
  401546:	55                   	push   %rbp
  401547:	48 89 e5             	mov    %rsp,%rbp
  40154a:	48 83 ec 10          	sub    $0x10,%rsp
  40154e:	b8 00 00 00 00       	mov    $0x0,%eax
  401553:	e8 84 04 00 00       	call   4019dc <uniqueval>
  401558:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40155b:	b8 00 00 00 00       	mov    $0x0,%eax
  401560:	e8 ee 06 00 00       	call   401c53 <getbufn>
  401565:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401568:	b8 00 00 00 00       	mov    $0x0,%eax
  40156d:	e8 6a 04 00 00       	call   4019dc <uniqueval>
  401572:	8b 55 f8             	mov    -0x8(%rbp),%edx
  401575:	39 d0                	cmp    %edx,%eax
  401577:	74 0c                	je     401585 <testn+0x3f>
  401579:	bf b0 30 40 00       	mov    $0x4030b0,%edi
  40157e:	e8 ed fa ff ff       	call   401070 <puts@plt>
  401583:	eb 41                	jmp    4015c6 <testn+0x80>
  401585:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401588:	8b 05 ca 3c 00 00    	mov    0x3cca(%rip),%eax        # 405258 <cookie>
  40158e:	39 c2                	cmp    %eax,%edx
  401590:	75 20                	jne    4015b2 <testn+0x6c>
  401592:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401595:	89 c6                	mov    %eax,%esi
  401597:	bf 18 31 40 00       	mov    $0x403118,%edi
  40159c:	b8 00 00 00 00       	mov    $0x0,%eax
  4015a1:	e8 3a fb ff ff       	call   4010e0 <printf@plt>
  4015a6:	bf 04 00 00 00       	mov    $0x4,%edi
  4015ab:	e8 61 08 00 00       	call   401e11 <validate>
  4015b0:	eb 14                	jmp    4015c6 <testn+0x80>
  4015b2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015b5:	89 c6                	mov    %eax,%esi
  4015b7:	bf 38 31 40 00       	mov    $0x403138,%edi
  4015bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c1:	e8 1a fb ff ff       	call   4010e0 <printf@plt>
  4015c6:	90                   	nop
  4015c7:	c9                   	leave  
  4015c8:	c3                   	ret    

00000000004015c9 <save_char>:
  4015c9:	55                   	push   %rbp
  4015ca:	48 89 e5             	mov    %rsp,%rbp
  4015cd:	89 f8                	mov    %edi,%eax
  4015cf:	88 45 fc             	mov    %al,-0x4(%rbp)
  4015d2:	8b 05 8c 3c 00 00    	mov    0x3c8c(%rip),%eax        # 405264 <gets_cnt>
  4015d8:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4015dd:	0f 8f 81 00 00 00    	jg     401664 <save_char+0x9b>
  4015e3:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  4015e7:	c0 f8 04             	sar    $0x4,%al
  4015ea:	0f be c0             	movsbl %al,%eax
  4015ed:	83 e0 0f             	and    $0xf,%eax
  4015f0:	89 c6                	mov    %eax,%esi
  4015f2:	8b 15 6c 3c 00 00    	mov    0x3c6c(%rip),%edx        # 405264 <gets_cnt>
  4015f8:	89 d0                	mov    %edx,%eax
  4015fa:	01 c0                	add    %eax,%eax
  4015fc:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
  4015ff:	48 63 c6             	movslq %esi,%rax
  401602:	0f b6 90 a0 51 40 00 	movzbl 0x4051a0(%rax),%edx
  401609:	48 63 c1             	movslq %ecx,%rax
  40160c:	88 90 80 52 40 00    	mov    %dl,0x405280(%rax)
  401612:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
  401616:	83 e0 0f             	and    $0xf,%eax
  401619:	89 c6                	mov    %eax,%esi
  40161b:	8b 15 43 3c 00 00    	mov    0x3c43(%rip),%edx        # 405264 <gets_cnt>
  401621:	89 d0                	mov    %edx,%eax
  401623:	01 c0                	add    %eax,%eax
  401625:	01 d0                	add    %edx,%eax
  401627:	8d 48 01             	lea    0x1(%rax),%ecx
  40162a:	48 63 c6             	movslq %esi,%rax
  40162d:	0f b6 90 a0 51 40 00 	movzbl 0x4051a0(%rax),%edx
  401634:	48 63 c1             	movslq %ecx,%rax
  401637:	88 90 80 52 40 00    	mov    %dl,0x405280(%rax)
  40163d:	8b 15 21 3c 00 00    	mov    0x3c21(%rip),%edx        # 405264 <gets_cnt>
  401643:	89 d0                	mov    %edx,%eax
  401645:	01 c0                	add    %eax,%eax
  401647:	01 d0                	add    %edx,%eax
  401649:	83 c0 02             	add    $0x2,%eax
  40164c:	48 98                	cltq   
  40164e:	c6 80 80 52 40 00 20 	movb   $0x20,0x405280(%rax)
  401655:	8b 05 09 3c 00 00    	mov    0x3c09(%rip),%eax        # 405264 <gets_cnt>
  40165b:	83 c0 01             	add    $0x1,%eax
  40165e:	89 05 00 3c 00 00    	mov    %eax,0x3c00(%rip)        # 405264 <gets_cnt>
  401664:	90                   	nop
  401665:	5d                   	pop    %rbp
  401666:	c3                   	ret    

0000000000401667 <save_term>:
  401667:	55                   	push   %rbp
  401668:	48 89 e5             	mov    %rsp,%rbp
  40166b:	8b 15 f3 3b 00 00    	mov    0x3bf3(%rip),%edx        # 405264 <gets_cnt>
  401671:	89 d0                	mov    %edx,%eax
  401673:	01 c0                	add    %eax,%eax
  401675:	01 d0                	add    %edx,%eax
  401677:	48 98                	cltq   
  401679:	c6 80 80 52 40 00 00 	movb   $0x0,0x405280(%rax)
  401680:	90                   	nop
  401681:	5d                   	pop    %rbp
  401682:	c3                   	ret    

0000000000401683 <Gets>:
  401683:	55                   	push   %rbp
  401684:	48 89 e5             	mov    %rsp,%rbp
  401687:	48 83 ec 20          	sub    $0x20,%rsp
  40168b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40168f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401693:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401697:	c7 05 c3 3b 00 00 00 	movl   $0x0,0x3bc3(%rip)        # 405264 <gets_cnt>
  40169e:	00 00 00 
  4016a1:	eb 1e                	jmp    4016c1 <Gets+0x3e>
  4016a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016a7:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4016ab:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  4016af:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4016b2:	88 10                	mov    %dl,(%rax)
  4016b4:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4016b7:	0f be c0             	movsbl %al,%eax
  4016ba:	89 c7                	mov    %eax,%edi
  4016bc:	e8 08 ff ff ff       	call   4015c9 <save_char>
  4016c1:	48 8b 05 88 3b 00 00 	mov    0x3b88(%rip),%rax        # 405250 <infile>
  4016c8:	48 89 c7             	mov    %rax,%rdi
  4016cb:	e8 70 fb ff ff       	call   401240 <getc@plt>
  4016d0:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4016d3:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
  4016d7:	74 06                	je     4016df <Gets+0x5c>
  4016d9:	83 7d f4 0a          	cmpl   $0xa,-0xc(%rbp)
  4016dd:	75 c4                	jne    4016a3 <Gets+0x20>
  4016df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016e3:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4016e7:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  4016eb:	c6 00 00             	movb   $0x0,(%rax)
  4016ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f3:	e8 6f ff ff ff       	call   401667 <save_term>
  4016f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4016fc:	c9                   	leave  
  4016fd:	c3                   	ret    

00000000004016fe <usage>:
  4016fe:	55                   	push   %rbp
  4016ff:	48 89 e5             	mov    %rsp,%rbp
  401702:	48 83 ec 10          	sub    $0x10,%rsp
  401706:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40170a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40170e:	48 89 c6             	mov    %rax,%rsi
  401711:	bf 54 31 40 00       	mov    $0x403154,%edi
  401716:	b8 00 00 00 00       	mov    $0x0,%eax
  40171b:	e8 c0 f9 ff ff       	call   4010e0 <printf@plt>
  401720:	bf 72 31 40 00       	mov    $0x403172,%edi
  401725:	e8 46 f9 ff ff       	call   401070 <puts@plt>
  40172a:	bf 88 31 40 00       	mov    $0x403188,%edi
  40172f:	e8 3c f9 ff ff       	call   401070 <puts@plt>
  401734:	bf a8 31 40 00       	mov    $0x4031a8,%edi
  401739:	e8 32 f9 ff ff       	call   401070 <puts@plt>
  40173e:	bf e8 31 40 00       	mov    $0x4031e8,%edi
  401743:	e8 28 f9 ff ff       	call   401070 <puts@plt>
  401748:	bf 00 00 00 00       	mov    $0x0,%edi
  40174d:	e8 ae fa ff ff       	call   401200 <exit@plt>

0000000000401752 <bushandler>:
  401752:	55                   	push   %rbp
  401753:	48 89 e5             	mov    %rsp,%rbp
  401756:	48 83 ec 10          	sub    $0x10,%rsp
  40175a:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40175d:	bf 10 32 40 00       	mov    $0x403210,%edi
  401762:	e8 09 f9 ff ff       	call   401070 <puts@plt>
  401767:	bf 30 32 40 00       	mov    $0x403230,%edi
  40176c:	e8 ff f8 ff ff       	call   401070 <puts@plt>
  401771:	bf 00 00 00 00       	mov    $0x0,%edi
  401776:	e8 85 fa ff ff       	call   401200 <exit@plt>

000000000040177b <seghandler>:
  40177b:	55                   	push   %rbp
  40177c:	48 89 e5             	mov    %rsp,%rbp
  40177f:	48 83 ec 10          	sub    $0x10,%rsp
  401783:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401786:	bf 48 32 40 00       	mov    $0x403248,%edi
  40178b:	e8 e0 f8 ff ff       	call   401070 <puts@plt>
  401790:	bf 30 32 40 00       	mov    $0x403230,%edi
  401795:	e8 d6 f8 ff ff       	call   401070 <puts@plt>
  40179a:	bf 00 00 00 00       	mov    $0x0,%edi
  40179f:	e8 5c fa ff ff       	call   401200 <exit@plt>

00000000004017a4 <illegalhandler>:
  4017a4:	55                   	push   %rbp
  4017a5:	48 89 e5             	mov    %rsp,%rbp
  4017a8:	48 83 ec 10          	sub    $0x10,%rsp
  4017ac:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4017af:	bf 70 32 40 00       	mov    $0x403270,%edi
  4017b4:	e8 b7 f8 ff ff       	call   401070 <puts@plt>
  4017b9:	bf 30 32 40 00       	mov    $0x403230,%edi
  4017be:	e8 ad f8 ff ff       	call   401070 <puts@plt>
  4017c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4017c8:	e8 33 fa ff ff       	call   401200 <exit@plt>

00000000004017cd <launch>:
  4017cd:	55                   	push   %rbp
  4017ce:	48 89 e5             	mov    %rsp,%rbp
  4017d1:	48 83 ec 70          	sub    $0x70,%rsp
  4017d5:	89 7d 9c             	mov    %edi,-0x64(%rbp)
  4017d8:	89 75 98             	mov    %esi,-0x68(%rbp)
  4017db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017e2:	00 00 
  4017e4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017e8:	31 c0                	xor    %eax,%eax
  4017ea:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
  4017f1:	00 
  4017f2:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4017f6:	25 f0 3f 00 00       	and    $0x3ff0,%eax
  4017fb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  4017ff:	8b 45 98             	mov    -0x68(%rbp),%eax
  401802:	48 63 d0             	movslq %eax,%rdx
  401805:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401809:	48 01 d0             	add    %rdx,%rax
  40180c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401810:	b8 10 00 00 00       	mov    $0x10,%eax
  401815:	48 83 e8 01          	sub    $0x1,%rax
  401819:	48 01 d0             	add    %rdx,%rax
  40181c:	be 10 00 00 00       	mov    $0x10,%esi
  401821:	ba 00 00 00 00       	mov    $0x0,%edx
  401826:	48 f7 f6             	div    %rsi
  401829:	48 6b c0 10          	imul   $0x10,%rax,%rax
  40182d:	48 89 c1             	mov    %rax,%rcx
  401830:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
  401837:	48 89 e2             	mov    %rsp,%rdx
  40183a:	48 29 ca             	sub    %rcx,%rdx
  40183d:	48 39 d4             	cmp    %rdx,%rsp
  401840:	74 12                	je     401854 <launch+0x87>
  401842:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401849:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  401850:	00 00 
  401852:	eb e9                	jmp    40183d <launch+0x70>
  401854:	48 89 c2             	mov    %rax,%rdx
  401857:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  40185d:	48 29 d4             	sub    %rdx,%rsp
  401860:	48 89 c2             	mov    %rax,%rdx
  401863:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  401869:	48 85 d2             	test   %rdx,%rdx
  40186c:	74 10                	je     40187e <launch+0xb1>
  40186e:	25 ff 0f 00 00       	and    $0xfff,%eax
  401873:	48 83 e8 08          	sub    $0x8,%rax
  401877:	48 01 e0             	add    %rsp,%rax
  40187a:	48 83 08 00          	orq    $0x0,(%rax)
  40187e:	48 89 e0             	mov    %rsp,%rax
  401881:	48 83 c0 0f          	add    $0xf,%rax
  401885:	48 c1 e8 04          	shr    $0x4,%rax
  401889:	48 c1 e0 04          	shl    $0x4,%rax
  40188d:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401891:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  401895:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401899:	be f4 00 00 00       	mov    $0xf4,%esi
  40189e:	48 89 c7             	mov    %rax,%rdi
  4018a1:	e8 4a f8 ff ff       	call   4010f0 <memset@plt>
  4018a6:	bf 9b 32 40 00       	mov    $0x40329b,%edi
  4018ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b0:	e8 2b f8 ff ff       	call   4010e0 <printf@plt>
  4018b5:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
  4018b9:	74 0c                	je     4018c7 <launch+0xfa>
  4018bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c0:	e8 81 fc ff ff       	call   401546 <testn>
  4018c5:	eb 0a                	jmp    4018d1 <launch+0x104>
  4018c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018cc:	e8 f2 fb ff ff       	call   4014c3 <test>
  4018d1:	8b 05 85 39 00 00    	mov    0x3985(%rip),%eax        # 40525c <success>
  4018d7:	85 c0                	test   %eax,%eax
  4018d9:	75 14                	jne    4018ef <launch+0x122>
  4018db:	bf 30 32 40 00       	mov    $0x403230,%edi
  4018e0:	e8 8b f7 ff ff       	call   401070 <puts@plt>
  4018e5:	c7 05 6d 39 00 00 00 	movl   $0x0,0x396d(%rip)        # 40525c <success>
  4018ec:	00 00 00 
  4018ef:	90                   	nop
  4018f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018f4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018fb:	00 00 
  4018fd:	74 05                	je     401904 <launch+0x137>
  4018ff:	e8 ac f7 ff ff       	call   4010b0 <__stack_chk_fail@plt>
  401904:	c9                   	leave  
  401905:	c3                   	ret    

0000000000401906 <launcher>:
  401906:	55                   	push   %rbp
  401907:	48 89 e5             	mov    %rsp,%rbp
  40190a:	48 83 ec 20          	sub    $0x20,%rsp
  40190e:	89 7d ec             	mov    %edi,-0x14(%rbp)
  401911:	89 75 e8             	mov    %esi,-0x18(%rbp)
  401914:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401917:	89 05 67 45 00 00    	mov    %eax,0x4567(%rip)        # 405e84 <global_nitro>
  40191d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401920:	89 05 62 45 00 00    	mov    %eax,0x4562(%rip)        # 405e88 <global_offset>
  401926:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40192c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401932:	b9 32 01 00 00       	mov    $0x132,%ecx
  401937:	ba 07 00 00 00       	mov    $0x7,%edx
  40193c:	be 00 00 10 00       	mov    $0x100000,%esi
  401941:	bf 00 40 58 55       	mov    $0x55584000,%edi
  401946:	e8 75 f7 ff ff       	call   4010c0 <mmap@plt>
  40194b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40194f:	48 81 7d f8 00 40 58 	cmpq   $0x55584000,-0x8(%rbp)
  401956:	55 
  401957:	74 28                	je     401981 <launcher+0x7b>
  401959:	48 8b 05 c0 38 00 00 	mov    0x38c0(%rip),%rax        # 405220 <stderr@GLIBC_2.2.5>
  401960:	48 89 c1             	mov    %rax,%rcx
  401963:	ba 47 00 00 00       	mov    $0x47,%edx
  401968:	be 01 00 00 00       	mov    $0x1,%esi
  40196d:	bf a8 32 40 00       	mov    $0x4032a8,%edi
  401972:	e8 a9 f8 ff ff       	call   401220 <fwrite@plt>
  401977:	bf 01 00 00 00       	mov    $0x1,%edi
  40197c:	e8 7f f8 ff ff       	call   401200 <exit@plt>
  401981:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401985:	48 05 f0 ff 0f 00    	add    $0xffff0,%rax
  40198b:	48 89 05 fe 44 00 00 	mov    %rax,0x44fe(%rip)        # 405e90 <stack_top>
  401992:	48 8b 15 f7 44 00 00 	mov    0x44f7(%rip),%rdx        # 405e90 <stack_top>
  401999:	48 89 e0             	mov    %rsp,%rax
  40199c:	48 89 d4             	mov    %rdx,%rsp
  40199f:	48 89 c2             	mov    %rax,%rdx
  4019a2:	48 89 15 ef 44 00 00 	mov    %rdx,0x44ef(%rip)        # 405e98 <global_save_stack>
  4019a9:	8b 15 d9 44 00 00    	mov    0x44d9(%rip),%edx        # 405e88 <global_offset>
  4019af:	8b 05 cf 44 00 00    	mov    0x44cf(%rip),%eax        # 405e84 <global_nitro>
  4019b5:	89 d6                	mov    %edx,%esi
  4019b7:	89 c7                	mov    %eax,%edi
  4019b9:	e8 0f fe ff ff       	call   4017cd <launch>
  4019be:	48 8b 05 d3 44 00 00 	mov    0x44d3(%rip),%rax        # 405e98 <global_save_stack>
  4019c5:	48 89 c4             	mov    %rax,%rsp
  4019c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019cc:	be 00 00 10 00       	mov    $0x100000,%esi
  4019d1:	48 89 c7             	mov    %rax,%rdi
  4019d4:	e8 d7 f7 ff ff       	call   4011b0 <munmap@plt>
  4019d9:	90                   	nop
  4019da:	c9                   	leave  
  4019db:	c3                   	ret    

00000000004019dc <uniqueval>:
  4019dc:	55                   	push   %rbp
  4019dd:	48 89 e5             	mov    %rsp,%rbp
  4019e0:	e8 ab f6 ff ff       	call   401090 <getpid@plt>
  4019e5:	89 c7                	mov    %eax,%edi
  4019e7:	e8 64 f6 ff ff       	call   401050 <srandom@plt>
  4019ec:	e8 9f f7 ff ff       	call   401190 <random@plt>
  4019f1:	5d                   	pop    %rbp
  4019f2:	c3                   	ret    

00000000004019f3 <main>:
  4019f3:	55                   	push   %rbp
  4019f4:	48 89 e5             	mov    %rsp,%rbp
  4019f7:	48 83 ec 30          	sub    $0x30,%rsp
  4019fb:	89 7d dc             	mov    %edi,-0x24(%rbp)
  4019fe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401a02:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401a09:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  401a10:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
  401a17:	be 7b 17 40 00       	mov    $0x40177b,%esi
  401a1c:	bf 0b 00 00 00       	mov    $0xb,%edi
  401a21:	e8 3a f7 ff ff       	call   401160 <signal@plt>
  401a26:	be 52 17 40 00       	mov    $0x401752,%esi
  401a2b:	bf 07 00 00 00       	mov    $0x7,%edi
  401a30:	e8 2b f7 ff ff       	call   401160 <signal@plt>
  401a35:	be a4 17 40 00       	mov    $0x4017a4,%esi
  401a3a:	bf 04 00 00 00       	mov    $0x4,%edi
  401a3f:	e8 1c f7 ff ff       	call   401160 <signal@plt>
  401a44:	48 8b 05 95 37 00 00 	mov    0x3795(%rip),%rax        # 4051e0 <stdin@GLIBC_2.2.5>
  401a4b:	48 89 05 fe 37 00 00 	mov    %rax,0x37fe(%rip)        # 405250 <infile>
  401a52:	e9 97 00 00 00       	jmp    401aee <main+0xfb>
  401a57:	0f be 45 e7          	movsbl -0x19(%rbp),%eax
  401a5b:	83 e8 67             	sub    $0x67,%eax
  401a5e:	83 f8 0e             	cmp    $0xe,%eax
  401a61:	77 7c                	ja     401adf <main+0xec>
  401a63:	89 c0                	mov    %eax,%eax
  401a65:	48 8b 04 c5 68 33 40 	mov    0x403368(,%rax,8),%rax
  401a6c:	00 
  401a6d:	ff e0                	jmp    *%rax
  401a6f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401a73:	48 8b 00             	mov    (%rax),%rax
  401a76:	48 89 c7             	mov    %rax,%rdi
  401a79:	e8 80 fc ff ff       	call   4016fe <usage>
  401a7e:	eb 6e                	jmp    401aee <main+0xfb>
  401a80:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
  401a87:	c7 45 f0 05 00 00 00 	movl   $0x5,-0x10(%rbp)
  401a8e:	eb 5e                	jmp    401aee <main+0xfb>
  401a90:	48 8b 05 69 37 00 00 	mov    0x3769(%rip),%rax        # 405200 <optarg@GLIBC_2.2.5>
  401a97:	48 89 c7             	mov    %rax,%rdi
  401a9a:	e8 91 f7 ff ff       	call   401230 <strdup@plt>
  401a9f:	48 89 05 9a 37 00 00 	mov    %rax,0x379a(%rip)        # 405240 <userid>
  401aa6:	48 8b 05 93 37 00 00 	mov    0x3793(%rip),%rax        # 405240 <userid>
  401aad:	48 89 c7             	mov    %rax,%rdi
  401ab0:	e8 fd 13 00 00       	call   402eb2 <gencookie>
  401ab5:	89 05 9d 37 00 00    	mov    %eax,0x379d(%rip)        # 405258 <cookie>
  401abb:	eb 31                	jmp    401aee <main+0xfb>
  401abd:	bf f0 32 40 00       	mov    $0x4032f0,%edi
  401ac2:	e8 a9 f5 ff ff       	call   401070 <puts@plt>
  401ac7:	c7 05 77 37 00 00 00 	movl   $0x0,0x3777(%rip)        # 405248 <notify>
  401ace:	00 00 00 
  401ad1:	eb 1b                	jmp    401aee <main+0xfb>
  401ad3:	c7 05 6f 37 00 00 01 	movl   $0x1,0x376f(%rip)        # 40524c <autograde>
  401ada:	00 00 00 
  401add:	eb 0f                	jmp    401aee <main+0xfb>
  401adf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401ae3:	48 8b 00             	mov    (%rax),%rax
  401ae6:	48 89 c7             	mov    %rax,%rdi
  401ae9:	e8 10 fc ff ff       	call   4016fe <usage>
  401aee:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  401af2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401af5:	ba 18 33 40 00       	mov    $0x403318,%edx
  401afa:	48 89 ce             	mov    %rcx,%rsi
  401afd:	89 c7                	mov    %eax,%edi
  401aff:	e8 cc f6 ff ff       	call   4011d0 <getopt@plt>
  401b04:	88 45 e7             	mov    %al,-0x19(%rbp)
  401b07:	80 7d e7 ff          	cmpb   $0xff,-0x19(%rbp)
  401b0b:	0f 85 46 ff ff ff    	jne    401a57 <main+0x64>
  401b11:	48 8b 05 28 37 00 00 	mov    0x3728(%rip),%rax        # 405240 <userid>
  401b18:	48 85 c0             	test   %rax,%rax
  401b1b:	75 28                	jne    401b45 <main+0x152>
  401b1d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401b21:	48 8b 00             	mov    (%rax),%rax
  401b24:	48 89 c6             	mov    %rax,%rsi
  401b27:	bf 20 33 40 00       	mov    $0x403320,%edi
  401b2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b31:	e8 aa f5 ff ff       	call   4010e0 <printf@plt>
  401b36:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401b3a:	48 8b 00             	mov    (%rax),%rax
  401b3d:	48 89 c7             	mov    %rax,%rdi
  401b40:	e8 b9 fb ff ff       	call   4016fe <usage>
  401b45:	e8 2a 01 00 00       	call   401c74 <initialize_bomb>
  401b4a:	48 8b 05 ef 36 00 00 	mov    0x36ef(%rip),%rax        # 405240 <userid>
  401b51:	48 89 c6             	mov    %rax,%rsi
  401b54:	bf 4c 33 40 00       	mov    $0x40334c,%edi
  401b59:	b8 00 00 00 00       	mov    $0x0,%eax
  401b5e:	e8 7d f5 ff ff       	call   4010e0 <printf@plt>
  401b63:	8b 05 ef 36 00 00    	mov    0x36ef(%rip),%eax        # 405258 <cookie>
  401b69:	89 c6                	mov    %eax,%esi
  401b6b:	bf 58 33 40 00       	mov    $0x403358,%edi
  401b70:	b8 00 00 00 00       	mov    $0x0,%eax
  401b75:	e8 66 f5 ff ff       	call   4010e0 <printf@plt>
  401b7a:	8b 05 d8 36 00 00    	mov    0x36d8(%rip),%eax        # 405258 <cookie>
  401b80:	89 c7                	mov    %eax,%edi
  401b82:	e8 c9 f4 ff ff       	call   401050 <srandom@plt>
  401b87:	e8 04 f6 ff ff       	call   401190 <random@plt>
  401b8c:	25 f0 0f 00 00       	and    $0xff0,%eax
  401b91:	05 00 01 00 00       	add    $0x100,%eax
  401b96:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401b99:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401b9c:	48 98                	cltq   
  401b9e:	be 04 00 00 00       	mov    $0x4,%esi
  401ba3:	48 89 c7             	mov    %rax,%rdi
  401ba6:	e8 95 f5 ff ff       	call   401140 <calloc@plt>
  401bab:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401baf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401bb3:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401bb9:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
  401bc0:	eb 2b                	jmp    401bed <main+0x1fa>
  401bc2:	e8 c9 f5 ff ff       	call   401190 <random@plt>
  401bc7:	25 f0 00 00 00       	and    $0xf0,%eax
  401bcc:	ba 80 00 00 00       	mov    $0x80,%edx
  401bd1:	29 c2                	sub    %eax,%edx
  401bd3:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401bd6:	48 98                	cltq   
  401bd8:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
  401bdf:	00 
  401be0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401be4:	48 01 c8             	add    %rcx,%rax
  401be7:	89 10                	mov    %edx,(%rax)
  401be9:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  401bed:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401bf0:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  401bf3:	7c cd                	jl     401bc2 <main+0x1cf>
  401bf5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401bfc:	eb 2b                	jmp    401c29 <main+0x236>
  401bfe:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401c01:	48 98                	cltq   
  401c03:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401c0a:	00 
  401c0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c0f:	48 01 d0             	add    %rdx,%rax
  401c12:	8b 10                	mov    (%rax),%edx
  401c14:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401c17:	01 c2                	add    %eax,%edx
  401c19:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401c1c:	89 d6                	mov    %edx,%esi
  401c1e:	89 c7                	mov    %eax,%edi
  401c20:	e8 e1 fc ff ff       	call   401906 <launcher>
  401c25:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  401c29:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401c2c:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  401c2f:	7c cd                	jl     401bfe <main+0x20b>
  401c31:	b8 00 00 00 00       	mov    $0x0,%eax
  401c36:	c9                   	leave  
  401c37:	c3                   	ret    

0000000000401c38 <getbuf>:
  401c38:	55                   	push   %rbp
  401c39:	48 89 e5             	mov    %rsp,%rbp
  401c3c:	48 83 ec 30          	sub    $0x30,%rsp
  401c40:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401c44:	48 89 c7             	mov    %rax,%rdi
  401c47:	e8 37 fa ff ff       	call   401683 <Gets>
  401c4c:	b8 01 00 00 00       	mov    $0x1,%eax
  401c51:	c9                   	leave  
  401c52:	c3                   	ret    

0000000000401c53 <getbufn>:
  401c53:	55                   	push   %rbp
  401c54:	48 89 e5             	mov    %rsp,%rbp
  401c57:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
  401c5e:	48 8d 85 f0 fd ff ff 	lea    -0x210(%rbp),%rax
  401c65:	48 89 c7             	mov    %rax,%rdi
  401c68:	e8 16 fa ff ff       	call   401683 <Gets>
  401c6d:	b8 01 00 00 00       	mov    $0x1,%eax
  401c72:	c9                   	leave  
  401c73:	c3                   	ret    

0000000000401c74 <initialize_bomb>:
  401c74:	55                   	push   %rbp
  401c75:	48 89 e5             	mov    %rsp,%rbp
  401c78:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401c7f:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401c84:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401c8b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401c90:	48 81 ec 20 04 00 00 	sub    $0x420,%rsp
  401c97:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c9e:	00 00 
  401ca0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ca4:	31 c0                	xor    %eax,%eax
  401ca6:	c7 85 ec db ff ff 00 	movl   $0x0,-0x2414(%rbp)
  401cad:	00 00 00 
  401cb0:	8b 05 96 35 00 00    	mov    0x3596(%rip),%eax        # 40524c <autograde>
  401cb6:	85 c0                	test   %eax,%eax
  401cb8:	74 0a                	je     401cc4 <initialize_bomb+0x50>
  401cba:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401cbf:	e8 a5 0e 00 00       	call   402b69 <init_timeout>
  401cc4:	8b 05 7e 35 00 00    	mov    0x357e(%rip),%eax        # 405248 <notify>
  401cca:	85 c0                	test   %eax,%eax
  401ccc:	0f 84 28 01 00 00    	je     401dfa <initialize_bomb+0x186>
  401cd2:	48 8d 85 f0 db ff ff 	lea    -0x2410(%rbp),%rax
  401cd9:	be 00 04 00 00       	mov    $0x400,%esi
  401cde:	48 89 c7             	mov    %rax,%rdi
  401ce1:	e8 fa f4 ff ff       	call   4011e0 <gethostname@plt>
  401ce6:	85 c0                	test   %eax,%eax
  401ce8:	74 14                	je     401cfe <initialize_bomb+0x8a>
  401cea:	bf e0 33 40 00       	mov    $0x4033e0,%edi
  401cef:	e8 7c f3 ff ff       	call   401070 <puts@plt>
  401cf4:	bf 08 00 00 00       	mov    $0x8,%edi
  401cf9:	e8 02 f5 ff ff       	call   401200 <exit@plt>
  401cfe:	c7 85 e8 db ff ff 00 	movl   $0x0,-0x2418(%rbp)
  401d05:	00 00 00 
  401d08:	eb 39                	jmp    401d43 <initialize_bomb+0xcf>
  401d0a:	8b 85 e8 db ff ff    	mov    -0x2418(%rbp),%eax
  401d10:	48 98                	cltq   
  401d12:	48 8b 04 c5 a0 5e 40 	mov    0x405ea0(,%rax,8),%rax
  401d19:	00 
  401d1a:	48 8d 95 f0 db ff ff 	lea    -0x2410(%rbp),%rdx
  401d21:	48 89 d6             	mov    %rdx,%rsi
  401d24:	48 89 c7             	mov    %rax,%rdi
  401d27:	e8 04 f3 ff ff       	call   401030 <strcasecmp@plt>
  401d2c:	85 c0                	test   %eax,%eax
  401d2e:	75 0c                	jne    401d3c <initialize_bomb+0xc8>
  401d30:	c7 85 ec db ff ff 01 	movl   $0x1,-0x2414(%rbp)
  401d37:	00 00 00 
  401d3a:	eb 1c                	jmp    401d58 <initialize_bomb+0xe4>
  401d3c:	83 85 e8 db ff ff 01 	addl   $0x1,-0x2418(%rbp)
  401d43:	8b 85 e8 db ff ff    	mov    -0x2418(%rbp),%eax
  401d49:	48 98                	cltq   
  401d4b:	48 8b 04 c5 a0 5e 40 	mov    0x405ea0(,%rax,8),%rax
  401d52:	00 
  401d53:	48 85 c0             	test   %rax,%rax
  401d56:	75 b2                	jne    401d0a <initialize_bomb+0x96>
  401d58:	83 bd ec db ff ff 00 	cmpl   $0x0,-0x2414(%rbp)
  401d5f:	75 63                	jne    401dc4 <initialize_bomb+0x150>
  401d61:	48 8d 85 f0 db ff ff 	lea    -0x2410(%rbp),%rax
  401d68:	48 89 c6             	mov    %rax,%rsi
  401d6b:	bf 18 34 40 00       	mov    $0x403418,%edi
  401d70:	b8 00 00 00 00       	mov    $0x0,%eax
  401d75:	e8 66 f3 ff ff       	call   4010e0 <printf@plt>
  401d7a:	c7 85 e8 db ff ff 00 	movl   $0x0,-0x2418(%rbp)
  401d81:	00 00 00 
  401d84:	eb 1f                	jmp    401da5 <initialize_bomb+0x131>
  401d86:	8b 85 e8 db ff ff    	mov    -0x2418(%rbp),%eax
  401d8c:	48 98                	cltq   
  401d8e:	48 8b 04 c5 a0 5e 40 	mov    0x405ea0(,%rax,8),%rax
  401d95:	00 
  401d96:	48 89 c7             	mov    %rax,%rdi
  401d99:	e8 d2 f2 ff ff       	call   401070 <puts@plt>
  401d9e:	83 85 e8 db ff ff 01 	addl   $0x1,-0x2418(%rbp)
  401da5:	8b 85 e8 db ff ff    	mov    -0x2418(%rbp),%eax
  401dab:	48 98                	cltq   
  401dad:	48 8b 04 c5 a0 5e 40 	mov    0x405ea0(,%rax,8),%rax
  401db4:	00 
  401db5:	48 85 c0             	test   %rax,%rax
  401db8:	75 cc                	jne    401d86 <initialize_bomb+0x112>
  401dba:	bf 08 00 00 00       	mov    $0x8,%edi
  401dbf:	e8 3c f4 ff ff       	call   401200 <exit@plt>
  401dc4:	48 8d 85 f0 df ff ff 	lea    -0x2010(%rbp),%rax
  401dcb:	48 89 c7             	mov    %rax,%rdi
  401dce:	e8 d2 0d 00 00       	call   402ba5 <init_driver>
  401dd3:	85 c0                	test   %eax,%eax
  401dd5:	79 23                	jns    401dfa <initialize_bomb+0x186>
  401dd7:	48 8d 85 f0 df ff ff 	lea    -0x2010(%rbp),%rax
  401dde:	48 89 c6             	mov    %rax,%rsi
  401de1:	bf 53 34 40 00       	mov    $0x403453,%edi
  401de6:	b8 00 00 00 00       	mov    $0x0,%eax
  401deb:	e8 f0 f2 ff ff       	call   4010e0 <printf@plt>
  401df0:	bf 08 00 00 00       	mov    $0x8,%edi
  401df5:	e8 06 f4 ff ff       	call   401200 <exit@plt>
  401dfa:	90                   	nop
  401dfb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401e06:	00 00 
  401e08:	74 05                	je     401e0f <initialize_bomb+0x19b>
  401e0a:	e8 a1 f2 ff ff       	call   4010b0 <__stack_chk_fail@plt>
  401e0f:	c9                   	leave  
  401e10:	c3                   	ret    

0000000000401e11 <validate>:
  401e11:	55                   	push   %rbp
  401e12:	48 89 e5             	mov    %rsp,%rbp
  401e15:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  401e1c:	ff 
  401e1d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401e24:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401e29:	4c 39 dc             	cmp    %r11,%rsp
  401e2c:	75 ef                	jne    401e1d <validate+0xc>
  401e2e:	48 83 ec 30          	sub    $0x30,%rsp
  401e32:	89 bd dc bf ff ff    	mov    %edi,-0x4024(%rbp)
  401e38:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e3f:	00 00 
  401e41:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401e45:	31 c0                	xor    %eax,%eax
  401e47:	48 8b 05 f2 33 00 00 	mov    0x33f2(%rip),%rax        # 405240 <userid>
  401e4e:	48 85 c0             	test   %rax,%rax
  401e51:	75 0f                	jne    401e62 <validate+0x51>
  401e53:	bf 68 34 40 00       	mov    $0x403468,%edi
  401e58:	e8 13 f2 ff ff       	call   401070 <puts@plt>
  401e5d:	e9 39 01 00 00       	jmp    401f9b <validate+0x18a>
  401e62:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  401e69:	78 09                	js     401e74 <validate+0x63>
  401e6b:	83 bd dc bf ff ff 04 	cmpl   $0x4,-0x4024(%rbp)
  401e72:	7e 0f                	jle    401e83 <validate+0x72>
  401e74:	bf 98 34 40 00       	mov    $0x403498,%edi
  401e79:	e8 f2 f1 ff ff       	call   401070 <puts@plt>
  401e7e:	e9 18 01 00 00       	jmp    401f9b <validate+0x18a>
  401e83:	c7 05 cf 33 00 00 01 	movl   $0x1,0x33cf(%rip)        # 40525c <success>
  401e8a:	00 00 00 
  401e8d:	8b 85 dc bf ff ff    	mov    -0x4024(%rbp),%eax
  401e93:	48 98                	cltq   
  401e95:	8b 04 85 b0 51 40 00 	mov    0x4051b0(,%rax,4),%eax
  401e9c:	8d 50 ff             	lea    -0x1(%rax),%edx
  401e9f:	8b 85 dc bf ff ff    	mov    -0x4024(%rbp),%eax
  401ea5:	48 98                	cltq   
  401ea7:	89 14 85 b0 51 40 00 	mov    %edx,0x4051b0(,%rax,4)
  401eae:	8b 85 dc bf ff ff    	mov    -0x4024(%rbp),%eax
  401eb4:	48 98                	cltq   
  401eb6:	8b 04 85 b0 51 40 00 	mov    0x4051b0(,%rax,4),%eax
  401ebd:	85 c0                	test   %eax,%eax
  401ebf:	7e 0f                	jle    401ed0 <validate+0xbf>
  401ec1:	bf be 34 40 00       	mov    $0x4034be,%edi
  401ec6:	e8 a5 f1 ff ff       	call   401070 <puts@plt>
  401ecb:	e9 cb 00 00 00       	jmp    401f9b <validate+0x18a>
  401ed0:	bf c9 34 40 00       	mov    $0x4034c9,%edi
  401ed5:	e8 96 f1 ff ff       	call   401070 <puts@plt>
  401eda:	8b 05 68 33 00 00    	mov    0x3368(%rip),%eax        # 405248 <notify>
  401ee0:	85 c0                	test   %eax,%eax
  401ee2:	0f 84 a9 00 00 00    	je     401f91 <validate+0x180>
  401ee8:	bf 80 52 40 00       	mov    $0x405280,%edi
  401eed:	e8 ae f1 ff ff       	call   4010a0 <strlen@plt>
  401ef2:	48 83 c0 20          	add    $0x20,%rax
  401ef6:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401efc:	76 0f                	jbe    401f0d <validate+0xfc>
  401efe:	bf d0 34 40 00       	mov    $0x4034d0,%edi
  401f03:	e8 68 f1 ff ff       	call   401070 <puts@plt>
  401f08:	e9 8e 00 00 00       	jmp    401f9b <validate+0x18a>
  401f0d:	8b 0d 45 33 00 00    	mov    0x3345(%rip),%ecx        # 405258 <cookie>
  401f13:	8b 95 dc bf ff ff    	mov    -0x4024(%rbp),%edx
  401f19:	48 8d 85 f0 bf ff ff 	lea    -0x4010(%rbp),%rax
  401f20:	41 b8 80 52 40 00    	mov    $0x405280,%r8d
  401f26:	be 07 35 40 00       	mov    $0x403507,%esi
  401f2b:	48 89 c7             	mov    %rax,%rdi
  401f2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f33:	e8 b8 f2 ff ff       	call   4011f0 <sprintf@plt>
  401f38:	48 8b 05 01 33 00 00 	mov    0x3301(%rip),%rax        # 405240 <userid>
  401f3f:	48 8d 95 f0 df ff ff 	lea    -0x2010(%rbp),%rdx
  401f46:	48 8d b5 f0 bf ff ff 	lea    -0x4010(%rbp),%rsi
  401f4d:	48 89 d1             	mov    %rdx,%rcx
  401f50:	ba 00 00 00 00       	mov    $0x0,%edx
  401f55:	48 89 c7             	mov    %rax,%rdi
  401f58:	e8 1f 0e 00 00       	call   402d7c <driver_post>
  401f5d:	89 85 ec bf ff ff    	mov    %eax,-0x4014(%rbp)
  401f63:	83 bd ec bf ff ff 00 	cmpl   $0x0,-0x4014(%rbp)
  401f6a:	75 0c                	jne    401f78 <validate+0x167>
  401f6c:	bf 10 35 40 00       	mov    $0x403510,%edi
  401f71:	e8 fa f0 ff ff       	call   401070 <puts@plt>
  401f76:	eb 19                	jmp    401f91 <validate+0x180>
  401f78:	48 8d 85 f0 df ff ff 	lea    -0x2010(%rbp),%rax
  401f7f:	48 89 c6             	mov    %rax,%rsi
  401f82:	bf 40 35 40 00       	mov    $0x403540,%edi
  401f87:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8c:	e8 4f f1 ff ff       	call   4010e0 <printf@plt>
  401f91:	bf 7e 35 40 00       	mov    $0x40357e,%edi
  401f96:	e8 d5 f0 ff ff       	call   401070 <puts@plt>
  401f9b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f9f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401fa6:	00 00 
  401fa8:	74 05                	je     401faf <validate+0x19e>
  401faa:	e8 01 f1 ff ff       	call   4010b0 <__stack_chk_fail@plt>
  401faf:	c9                   	leave  
  401fb0:	c3                   	ret    

0000000000401fb1 <sigalrm_handler>:
  401fb1:	55                   	push   %rbp
  401fb2:	48 89 e5             	mov    %rsp,%rbp
  401fb5:	48 83 ec 10          	sub    $0x10,%rsp
  401fb9:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401fbc:	be 02 00 00 00       	mov    $0x2,%esi
  401fc1:	bf 88 35 40 00       	mov    $0x403588,%edi
  401fc6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fcb:	e8 10 f1 ff ff       	call   4010e0 <printf@plt>
  401fd0:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd5:	e8 26 f2 ff ff       	call   401200 <exit@plt>

0000000000401fda <rio_readinitb>:
  401fda:	55                   	push   %rbp
  401fdb:	48 89 e5             	mov    %rsp,%rbp
  401fde:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401fe2:	89 75 f4             	mov    %esi,-0xc(%rbp)
  401fe5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fe9:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401fec:	89 10                	mov    %edx,(%rax)
  401fee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ff2:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  401ff9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ffd:	48 8d 50 10          	lea    0x10(%rax),%rdx
  402001:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402005:	48 89 50 08          	mov    %rdx,0x8(%rax)
  402009:	90                   	nop
  40200a:	5d                   	pop    %rbp
  40200b:	c3                   	ret    

000000000040200c <rio_read>:
  40200c:	55                   	push   %rbp
  40200d:	48 89 e5             	mov    %rsp,%rbp
  402010:	48 83 ec 30          	sub    $0x30,%rsp
  402014:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402018:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40201c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402020:	eb 6e                	jmp    402090 <rio_read+0x84>
  402022:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402026:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40202a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40202e:	8b 00                	mov    (%rax),%eax
  402030:	ba 00 20 00 00       	mov    $0x2000,%edx
  402035:	48 89 ce             	mov    %rcx,%rsi
  402038:	89 c7                	mov    %eax,%edi
  40203a:	e8 e1 f0 ff ff       	call   401120 <read@plt>
  40203f:	89 c2                	mov    %eax,%edx
  402041:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402045:	89 50 04             	mov    %edx,0x4(%rax)
  402048:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40204c:	8b 40 04             	mov    0x4(%rax),%eax
  40204f:	85 c0                	test   %eax,%eax
  402051:	79 18                	jns    40206b <rio_read+0x5f>
  402053:	e8 e8 ef ff ff       	call   401040 <__errno_location@plt>
  402058:	8b 00                	mov    (%rax),%eax
  40205a:	83 f8 04             	cmp    $0x4,%eax
  40205d:	74 31                	je     402090 <rio_read+0x84>
  40205f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402066:	e9 9d 00 00 00       	jmp    402108 <rio_read+0xfc>
  40206b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40206f:	8b 40 04             	mov    0x4(%rax),%eax
  402072:	85 c0                	test   %eax,%eax
  402074:	75 0a                	jne    402080 <rio_read+0x74>
  402076:	b8 00 00 00 00       	mov    $0x0,%eax
  40207b:	e9 88 00 00 00       	jmp    402108 <rio_read+0xfc>
  402080:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402084:	48 8d 50 10          	lea    0x10(%rax),%rdx
  402088:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40208c:	48 89 50 08          	mov    %rdx,0x8(%rax)
  402090:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402094:	8b 40 04             	mov    0x4(%rax),%eax
  402097:	85 c0                	test   %eax,%eax
  402099:	7e 87                	jle    402022 <rio_read+0x16>
  40209b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40209f:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4020a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020a6:	8b 40 04             	mov    0x4(%rax),%eax
  4020a9:	48 98                	cltq   
  4020ab:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
  4020af:	76 0a                	jbe    4020bb <rio_read+0xaf>
  4020b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020b5:	8b 40 04             	mov    0x4(%rax),%eax
  4020b8:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4020bb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4020be:	48 63 d0             	movslq %eax,%rdx
  4020c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020c5:	48 8b 48 08          	mov    0x8(%rax),%rcx
  4020c9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4020cd:	48 89 ce             	mov    %rcx,%rsi
  4020d0:	48 89 c7             	mov    %rax,%rdi
  4020d3:	e8 a8 f0 ff ff       	call   401180 <memcpy@plt>
  4020d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020dc:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4020e0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4020e3:	48 98                	cltq   
  4020e5:	48 01 c2             	add    %rax,%rdx
  4020e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020ec:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4020f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4020f4:	8b 40 04             	mov    0x4(%rax),%eax
  4020f7:	2b 45 fc             	sub    -0x4(%rbp),%eax
  4020fa:	89 c2                	mov    %eax,%edx
  4020fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402100:	89 50 04             	mov    %edx,0x4(%rax)
  402103:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402106:	48 98                	cltq   
  402108:	c9                   	leave  
  402109:	c3                   	ret    

000000000040210a <rio_readlineb>:
  40210a:	55                   	push   %rbp
  40210b:	48 89 e5             	mov    %rsp,%rbp
  40210e:	48 83 ec 40          	sub    $0x40,%rsp
  402112:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402116:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  40211a:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  40211e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402125:	00 00 
  402127:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40212b:	31 c0                	xor    %eax,%eax
  40212d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402131:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402135:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
  40213c:	eb 5d                	jmp    40219b <rio_readlineb+0x91>
  40213e:	48 8d 4d e7          	lea    -0x19(%rbp),%rcx
  402142:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402146:	ba 01 00 00 00       	mov    $0x1,%edx
  40214b:	48 89 ce             	mov    %rcx,%rsi
  40214e:	48 89 c7             	mov    %rax,%rdi
  402151:	e8 b6 fe ff ff       	call   40200c <rio_read>
  402156:	89 45 ec             	mov    %eax,-0x14(%rbp)
  402159:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  40215d:	75 1c                	jne    40217b <rio_readlineb+0x71>
  40215f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402163:	48 8d 50 01          	lea    0x1(%rax),%rdx
  402167:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  40216b:	0f b6 55 e7          	movzbl -0x19(%rbp),%edx
  40216f:	88 10                	mov    %dl,(%rax)
  402171:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
  402175:	3c 0a                	cmp    $0xa,%al
  402177:	75 1e                	jne    402197 <rio_readlineb+0x8d>
  402179:	eb 2e                	jmp    4021a9 <rio_readlineb+0x9f>
  40217b:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  40217f:	75 0d                	jne    40218e <rio_readlineb+0x84>
  402181:	83 7d e8 01          	cmpl   $0x1,-0x18(%rbp)
  402185:	75 21                	jne    4021a8 <rio_readlineb+0x9e>
  402187:	b8 00 00 00 00       	mov    $0x0,%eax
  40218c:	eb 27                	jmp    4021b5 <rio_readlineb+0xab>
  40218e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402195:	eb 1e                	jmp    4021b5 <rio_readlineb+0xab>
  402197:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  40219b:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40219e:	48 98                	cltq   
  4021a0:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
  4021a4:	77 98                	ja     40213e <rio_readlineb+0x34>
  4021a6:	eb 01                	jmp    4021a9 <rio_readlineb+0x9f>
  4021a8:	90                   	nop
  4021a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4021ad:	c6 00 00             	movb   $0x0,(%rax)
  4021b0:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4021b3:	48 98                	cltq   
  4021b5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4021b9:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4021c0:	00 00 
  4021c2:	74 05                	je     4021c9 <rio_readlineb+0xbf>
  4021c4:	e8 e7 ee ff ff       	call   4010b0 <__stack_chk_fail@plt>
  4021c9:	c9                   	leave  
  4021ca:	c3                   	ret    

00000000004021cb <rio_writen>:
  4021cb:	55                   	push   %rbp
  4021cc:	48 89 e5             	mov    %rsp,%rbp
  4021cf:	48 83 ec 40          	sub    $0x40,%rsp
  4021d3:	89 7d dc             	mov    %edi,-0x24(%rbp)
  4021d6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4021da:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  4021de:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4021e2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4021e6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4021ea:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021ee:	eb 4f                	jmp    40223f <rio_writen+0x74>
  4021f0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4021f4:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4021f8:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4021fb:	48 89 ce             	mov    %rcx,%rsi
  4021fe:	89 c7                	mov    %eax,%edi
  402200:	e8 7b ee ff ff       	call   401080 <write@plt>
  402205:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402209:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40220e:	7f 1f                	jg     40222f <rio_writen+0x64>
  402210:	e8 2b ee ff ff       	call   401040 <__errno_location@plt>
  402215:	8b 00                	mov    (%rax),%eax
  402217:	83 f8 04             	cmp    $0x4,%eax
  40221a:	75 0a                	jne    402226 <rio_writen+0x5b>
  40221c:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  402223:	00 
  402224:	eb 09                	jmp    40222f <rio_writen+0x64>
  402226:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40222d:	eb 1b                	jmp    40224a <rio_writen+0x7f>
  40222f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402233:	48 29 45 e8          	sub    %rax,-0x18(%rbp)
  402237:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40223b:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  40223f:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  402244:	75 aa                	jne    4021f0 <rio_writen+0x25>
  402246:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40224a:	c9                   	leave  
  40224b:	c3                   	ret    

000000000040224c <urlencode>:
  40224c:	55                   	push   %rbp
  40224d:	48 89 e5             	mov    %rsp,%rbp
  402250:	48 83 ec 30          	sub    $0x30,%rsp
  402254:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402258:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  40225c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402263:	00 00 
  402265:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402269:	31 c0                	xor    %eax,%eax
  40226b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40226f:	48 89 c7             	mov    %rax,%rdi
  402272:	e8 29 ee ff ff       	call   4010a0 <strlen@plt>
  402277:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40227a:	e9 32 01 00 00       	jmp    4023b1 <urlencode+0x165>
  40227f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402283:	0f b6 00             	movzbl (%rax),%eax
  402286:	3c 2a                	cmp    $0x2a,%al
  402288:	74 63                	je     4022ed <urlencode+0xa1>
  40228a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40228e:	0f b6 00             	movzbl (%rax),%eax
  402291:	3c 2d                	cmp    $0x2d,%al
  402293:	74 58                	je     4022ed <urlencode+0xa1>
  402295:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402299:	0f b6 00             	movzbl (%rax),%eax
  40229c:	3c 2e                	cmp    $0x2e,%al
  40229e:	74 4d                	je     4022ed <urlencode+0xa1>
  4022a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022a4:	0f b6 00             	movzbl (%rax),%eax
  4022a7:	3c 5f                	cmp    $0x5f,%al
  4022a9:	74 42                	je     4022ed <urlencode+0xa1>
  4022ab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022af:	0f b6 00             	movzbl (%rax),%eax
  4022b2:	3c 2f                	cmp    $0x2f,%al
  4022b4:	76 0b                	jbe    4022c1 <urlencode+0x75>
  4022b6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022ba:	0f b6 00             	movzbl (%rax),%eax
  4022bd:	3c 39                	cmp    $0x39,%al
  4022bf:	76 2c                	jbe    4022ed <urlencode+0xa1>
  4022c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022c5:	0f b6 00             	movzbl (%rax),%eax
  4022c8:	3c 40                	cmp    $0x40,%al
  4022ca:	76 0b                	jbe    4022d7 <urlencode+0x8b>
  4022cc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022d0:	0f b6 00             	movzbl (%rax),%eax
  4022d3:	3c 5a                	cmp    $0x5a,%al
  4022d5:	76 16                	jbe    4022ed <urlencode+0xa1>
  4022d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022db:	0f b6 00             	movzbl (%rax),%eax
  4022de:	3c 60                	cmp    $0x60,%al
  4022e0:	76 25                	jbe    402307 <urlencode+0xbb>
  4022e2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4022e6:	0f b6 00             	movzbl (%rax),%eax
  4022e9:	3c 7a                	cmp    $0x7a,%al
  4022eb:	77 1a                	ja     402307 <urlencode+0xbb>
  4022ed:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4022f1:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4022f5:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  4022f9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4022fd:	0f b6 12             	movzbl (%rdx),%edx
  402300:	88 10                	mov    %dl,(%rax)
  402302:	e9 a5 00 00 00       	jmp    4023ac <urlencode+0x160>
  402307:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40230b:	0f b6 00             	movzbl (%rax),%eax
  40230e:	3c 20                	cmp    $0x20,%al
  402310:	75 14                	jne    402326 <urlencode+0xda>
  402312:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402316:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40231a:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40231e:	c6 00 2b             	movb   $0x2b,(%rax)
  402321:	e9 86 00 00 00       	jmp    4023ac <urlencode+0x160>
  402326:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40232a:	0f b6 00             	movzbl (%rax),%eax
  40232d:	3c 1f                	cmp    $0x1f,%al
  40232f:	76 0b                	jbe    40233c <urlencode+0xf0>
  402331:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402335:	0f b6 00             	movzbl (%rax),%eax
  402338:	84 c0                	test   %al,%al
  40233a:	79 0b                	jns    402347 <urlencode+0xfb>
  40233c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402340:	0f b6 00             	movzbl (%rax),%eax
  402343:	3c 09                	cmp    $0x9,%al
  402345:	75 5e                	jne    4023a5 <urlencode+0x159>
  402347:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40234b:	0f b6 00             	movzbl (%rax),%eax
  40234e:	0f b6 d0             	movzbl %al,%edx
  402351:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402355:	be ac 35 40 00       	mov    $0x4035ac,%esi
  40235a:	48 89 c7             	mov    %rax,%rdi
  40235d:	b8 00 00 00 00       	mov    $0x0,%eax
  402362:	e8 89 ee ff ff       	call   4011f0 <sprintf@plt>
  402367:	0f b6 4d f0          	movzbl -0x10(%rbp),%ecx
  40236b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40236f:	48 8d 50 01          	lea    0x1(%rax),%rdx
  402373:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  402377:	89 ca                	mov    %ecx,%edx
  402379:	88 10                	mov    %dl,(%rax)
  40237b:	0f b6 4d f1          	movzbl -0xf(%rbp),%ecx
  40237f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402383:	48 8d 50 01          	lea    0x1(%rax),%rdx
  402387:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40238b:	89 ca                	mov    %ecx,%edx
  40238d:	88 10                	mov    %dl,(%rax)
  40238f:	0f b6 4d f2          	movzbl -0xe(%rbp),%ecx
  402393:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402397:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40239b:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
  40239f:	89 ca                	mov    %ecx,%edx
  4023a1:	88 10                	mov    %dl,(%rax)
  4023a3:	eb 07                	jmp    4023ac <urlencode+0x160>
  4023a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023aa:	eb 1b                	jmp    4023c7 <urlencode+0x17b>
  4023ac:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
  4023b1:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4023b4:	8d 50 ff             	lea    -0x1(%rax),%edx
  4023b7:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4023ba:	85 c0                	test   %eax,%eax
  4023bc:	0f 85 bd fe ff ff    	jne    40227f <urlencode+0x33>
  4023c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4023cb:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  4023d2:	00 00 
  4023d4:	74 05                	je     4023db <urlencode+0x18f>
  4023d6:	e8 d5 ec ff ff       	call   4010b0 <__stack_chk_fail@plt>
  4023db:	c9                   	leave  
  4023dc:	c3                   	ret    

00000000004023dd <submitr>:
  4023dd:	55                   	push   %rbp
  4023de:	48 89 e5             	mov    %rsp,%rbp
  4023e1:	53                   	push   %rbx
  4023e2:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  4023e9:	ff 
  4023ea:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4023f1:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4023f6:	4c 39 dc             	cmp    %r11,%rsp
  4023f9:	75 ef                	jne    4023ea <submitr+0xd>
  4023fb:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  402402:	48 89 bd 98 5f ff ff 	mov    %rdi,-0xa068(%rbp)
  402409:	89 b5 94 5f ff ff    	mov    %esi,-0xa06c(%rbp)
  40240f:	48 89 95 88 5f ff ff 	mov    %rdx,-0xa078(%rbp)
  402416:	48 89 8d 80 5f ff ff 	mov    %rcx,-0xa080(%rbp)
  40241d:	4c 89 85 78 5f ff ff 	mov    %r8,-0xa088(%rbp)
  402424:	4c 89 8d 70 5f ff ff 	mov    %r9,-0xa090(%rbp)
  40242b:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40242f:	48 89 85 68 5f ff ff 	mov    %rax,-0xa098(%rbp)
  402436:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40243d:	00 00 
  40243f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402443:	31 c0                	xor    %eax,%eax
  402445:	c7 85 a0 5f ff ff 00 	movl   $0x0,-0xa060(%rbp)
  40244c:	00 00 00 
  40244f:	ba 00 00 00 00       	mov    $0x0,%edx
  402454:	be 01 00 00 00       	mov    $0x1,%esi
  402459:	bf 02 00 00 00       	mov    $0x2,%edi
  40245e:	e8 fd ed ff ff       	call   401260 <socket@plt>
  402463:	89 85 a4 5f ff ff    	mov    %eax,-0xa05c(%rbp)
  402469:	83 bd a4 5f ff ff 00 	cmpl   $0x0,-0xa05c(%rbp)
  402470:	79 55                	jns    4024c7 <submitr+0xea>
  402472:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402479:	48 bb 45 72 72 6f 72 	movabs $0x43203a726f727245,%rbx
  402480:	3a 20 43 
  402483:	48 be 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rsi
  40248a:	20 75 6e 
  40248d:	48 89 18             	mov    %rbx,(%rax)
  402490:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402494:	48 bb 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rbx
  40249b:	74 6f 20 
  40249e:	48 be 63 72 65 61 74 	movabs $0x7320657461657263,%rsi
  4024a5:	65 20 73 
  4024a8:	48 89 58 10          	mov    %rbx,0x10(%rax)
  4024ac:	48 89 70 18          	mov    %rsi,0x18(%rax)
  4024b0:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rax)
  4024b7:	66 c7 40 24 74 00    	movw   $0x74,0x24(%rax)
  4024bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024c2:	e9 88 06 00 00       	jmp    402b4f <submitr+0x772>
  4024c7:	48 8b 85 98 5f ff ff 	mov    -0xa068(%rbp),%rax
  4024ce:	48 89 c7             	mov    %rax,%rdi
  4024d1:	e8 9a ec ff ff       	call   401170 <gethostbyname@plt>
  4024d6:	48 89 85 a8 5f ff ff 	mov    %rax,-0xa058(%rbp)
  4024dd:	48 83 bd a8 5f ff ff 	cmpq   $0x0,-0xa058(%rbp)
  4024e4:	00 
  4024e5:	75 37                	jne    40251e <submitr+0x141>
  4024e7:	48 8b 95 98 5f ff ff 	mov    -0xa068(%rbp),%rdx
  4024ee:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  4024f5:	be b8 35 40 00       	mov    $0x4035b8,%esi
  4024fa:	48 89 c7             	mov    %rax,%rdi
  4024fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402502:	e8 e9 ec ff ff       	call   4011f0 <sprintf@plt>
  402507:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  40250d:	89 c7                	mov    %eax,%edi
  40250f:	e8 fc eb ff ff       	call   401110 <close@plt>
  402514:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402519:	e9 31 06 00 00       	jmp    402b4f <submitr+0x772>
  40251e:	48 8d 85 c0 5f ff ff 	lea    -0xa040(%rbp),%rax
  402525:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40252c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  402533:	00 
  402534:	66 c7 85 c0 5f ff ff 	movw   $0x2,-0xa040(%rbp)
  40253b:	02 00 
  40253d:	48 8b 85 a8 5f ff ff 	mov    -0xa058(%rbp),%rax
  402544:	8b 40 14             	mov    0x14(%rax),%eax
  402547:	48 63 d0             	movslq %eax,%rdx
  40254a:	48 8b 85 a8 5f ff ff 	mov    -0xa058(%rbp),%rax
  402551:	48 8b 40 18          	mov    0x18(%rax),%rax
  402555:	48 8b 00             	mov    (%rax),%rax
  402558:	48 8d 8d c0 5f ff ff 	lea    -0xa040(%rbp),%rcx
  40255f:	48 83 c1 04          	add    $0x4,%rcx
  402563:	48 89 c6             	mov    %rax,%rsi
  402566:	48 89 cf             	mov    %rcx,%rdi
  402569:	e8 52 ec ff ff       	call   4011c0 <memmove@plt>
  40256e:	8b 85 94 5f ff ff    	mov    -0xa06c(%rbp),%eax
  402574:	0f b7 c0             	movzwl %ax,%eax
  402577:	89 c7                	mov    %eax,%edi
  402579:	e8 52 eb ff ff       	call   4010d0 <htons@plt>
  40257e:	66 89 85 c2 5f ff ff 	mov    %ax,-0xa03e(%rbp)
  402585:	48 8d 8d c0 5f ff ff 	lea    -0xa040(%rbp),%rcx
  40258c:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402592:	ba 10 00 00 00       	mov    $0x10,%edx
  402597:	48 89 ce             	mov    %rcx,%rsi
  40259a:	89 c7                	mov    %eax,%edi
  40259c:	e8 6f ec ff ff       	call   401210 <connect@plt>
  4025a1:	85 c0                	test   %eax,%eax
  4025a3:	79 37                	jns    4025dc <submitr+0x1ff>
  4025a5:	48 8b 95 98 5f ff ff 	mov    -0xa068(%rbp),%rdx
  4025ac:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  4025b3:	be e8 35 40 00       	mov    $0x4035e8,%esi
  4025b8:	48 89 c7             	mov    %rax,%rdi
  4025bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c0:	e8 2b ec ff ff       	call   4011f0 <sprintf@plt>
  4025c5:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  4025cb:	89 c7                	mov    %eax,%edi
  4025cd:	e8 3e eb ff ff       	call   401110 <close@plt>
  4025d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025d7:	e9 73 05 00 00       	jmp    402b4f <submitr+0x772>
  4025dc:	48 8b 85 70 5f ff ff 	mov    -0xa090(%rbp),%rax
  4025e3:	48 89 c7             	mov    %rax,%rdi
  4025e6:	e8 b5 ea ff ff       	call   4010a0 <strlen@plt>
  4025eb:	48 89 85 b0 5f ff ff 	mov    %rax,-0xa050(%rbp)
  4025f2:	48 8b 85 88 5f ff ff 	mov    -0xa078(%rbp),%rax
  4025f9:	48 89 c7             	mov    %rax,%rdi
  4025fc:	e8 9f ea ff ff       	call   4010a0 <strlen@plt>
  402601:	48 89 c3             	mov    %rax,%rbx
  402604:	48 8b 85 80 5f ff ff 	mov    -0xa080(%rbp),%rax
  40260b:	48 89 c7             	mov    %rax,%rdi
  40260e:	e8 8d ea ff ff       	call   4010a0 <strlen@plt>
  402613:	48 01 c3             	add    %rax,%rbx
  402616:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  40261d:	48 89 c7             	mov    %rax,%rdi
  402620:	e8 7b ea ff ff       	call   4010a0 <strlen@plt>
  402625:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
  402629:	48 8b 95 b0 5f ff ff 	mov    -0xa050(%rbp),%rdx
  402630:	48 89 d0             	mov    %rdx,%rax
  402633:	48 01 c0             	add    %rax,%rax
  402636:	48 01 d0             	add    %rdx,%rax
  402639:	48 01 c8             	add    %rcx,%rax
  40263c:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
  402640:	48 89 85 b8 5f ff ff 	mov    %rax,-0xa048(%rbp)
  402647:	48 81 bd b8 5f ff ff 	cmpq   $0x2000,-0xa048(%rbp)
  40264e:	00 20 00 00 
  402652:	76 7f                	jbe    4026d3 <submitr+0x2f6>
  402654:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  40265b:	48 bb 45 72 72 6f 72 	movabs $0x52203a726f727245,%rbx
  402662:	3a 20 52 
  402665:	48 be 65 73 75 6c 74 	movabs $0x747320746c757365,%rsi
  40266c:	20 73 74 
  40266f:	48 89 18             	mov    %rbx,(%rax)
  402672:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402676:	48 bb 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rbx
  40267d:	74 6f 6f 
  402680:	48 be 20 6c 61 72 67 	movabs $0x202e656772616c20,%rsi
  402687:	65 2e 20 
  40268a:	48 89 58 10          	mov    %rbx,0x10(%rax)
  40268e:	48 89 70 18          	mov    %rsi,0x18(%rax)
  402692:	48 bb 49 6e 63 72 65 	movabs $0x6573616572636e49,%rbx
  402699:	61 73 65 
  40269c:	48 be 20 53 55 42 4d 	movabs $0x5254494d42555320,%rsi
  4026a3:	49 54 52 
  4026a6:	48 89 58 20          	mov    %rbx,0x20(%rax)
  4026aa:	48 89 70 28          	mov    %rsi,0x28(%rax)
  4026ae:	48 bf 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rdi
  4026b5:	55 46 00 
  4026b8:	48 89 78 30          	mov    %rdi,0x30(%rax)
  4026bc:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  4026c2:	89 c7                	mov    %eax,%edi
  4026c4:	e8 47 ea ff ff       	call   401110 <close@plt>
  4026c9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026ce:	e9 7c 04 00 00       	jmp    402b4f <submitr+0x772>
  4026d3:	48 8d 85 e0 9f ff ff 	lea    -0x6020(%rbp),%rax
  4026da:	48 89 c6             	mov    %rax,%rsi
  4026dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4026e2:	ba 00 04 00 00       	mov    $0x400,%edx
  4026e7:	48 89 f7             	mov    %rsi,%rdi
  4026ea:	48 89 d1             	mov    %rdx,%rcx
  4026ed:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026f0:	48 8d 95 e0 9f ff ff 	lea    -0x6020(%rbp),%rdx
  4026f7:	48 8b 85 70 5f ff ff 	mov    -0xa090(%rbp),%rax
  4026fe:	48 89 d6             	mov    %rdx,%rsi
  402701:	48 89 c7             	mov    %rax,%rdi
  402704:	e8 43 fb ff ff       	call   40224c <urlencode>
  402709:	85 c0                	test   %eax,%eax
  40270b:	0f 89 97 00 00 00    	jns    4027a8 <submitr+0x3cb>
  402711:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402718:	48 bb 45 72 72 6f 72 	movabs $0x52203a726f727245,%rbx
  40271f:	3a 20 52 
  402722:	48 be 65 73 75 6c 74 	movabs $0x747320746c757365,%rsi
  402729:	20 73 74 
  40272c:	48 89 18             	mov    %rbx,(%rax)
  40272f:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402733:	48 bb 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rbx
  40273a:	63 6f 6e 
  40273d:	48 be 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rsi
  402744:	20 61 6e 
  402747:	48 89 58 10          	mov    %rbx,0x10(%rax)
  40274b:	48 89 70 18          	mov    %rsi,0x18(%rax)
  40274f:	48 bb 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rbx
  402756:	67 61 6c 
  402759:	48 be 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rsi
  402760:	6e 70 72 
  402763:	48 89 58 20          	mov    %rbx,0x20(%rax)
  402767:	48 89 70 28          	mov    %rsi,0x28(%rax)
  40276b:	48 bb 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rbx
  402772:	6c 65 20 
  402775:	48 be 63 68 61 72 61 	movabs $0x6574636172616863,%rsi
  40277c:	63 74 65 
  40277f:	48 89 58 30          	mov    %rbx,0x30(%rax)
  402783:	48 89 70 38          	mov    %rsi,0x38(%rax)
  402787:	66 c7 40 40 72 2e    	movw   $0x2e72,0x40(%rax)
  40278d:	c6 40 42 00          	movb   $0x0,0x42(%rax)
  402791:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402797:	89 c7                	mov    %eax,%edi
  402799:	e8 72 e9 ff ff       	call   401110 <close@plt>
  40279e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027a3:	e9 a7 03 00 00       	jmp    402b4f <submitr+0x772>
  4027a8:	48 8d bd e0 9f ff ff 	lea    -0x6020(%rbp),%rdi
  4027af:	48 8b b5 78 5f ff ff 	mov    -0xa088(%rbp),%rsi
  4027b6:	48 8b 8d 80 5f ff ff 	mov    -0xa080(%rbp),%rcx
  4027bd:	48 8b 95 88 5f ff ff 	mov    -0xa078(%rbp),%rdx
  4027c4:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  4027cb:	49 89 f9             	mov    %rdi,%r9
  4027ce:	49 89 f0             	mov    %rsi,%r8
  4027d1:	be 10 36 40 00       	mov    $0x403610,%esi
  4027d6:	48 89 c7             	mov    %rax,%rdi
  4027d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4027de:	e8 0d ea ff ff       	call   4011f0 <sprintf@plt>
  4027e3:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  4027ea:	48 89 c7             	mov    %rax,%rdi
  4027ed:	e8 ae e8 ff ff       	call   4010a0 <strlen@plt>
  4027f2:	48 89 c2             	mov    %rax,%rdx
  4027f5:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  4027fc:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402802:	48 89 ce             	mov    %rcx,%rsi
  402805:	89 c7                	mov    %eax,%edi
  402807:	e8 bf f9 ff ff       	call   4021cb <rio_writen>
  40280c:	48 85 c0             	test   %rax,%rax
  40280f:	79 6a                	jns    40287b <submitr+0x49e>
  402811:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402818:	48 bb 45 72 72 6f 72 	movabs $0x43203a726f727245,%rbx
  40281f:	3a 20 43 
  402822:	48 be 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rsi
  402829:	20 75 6e 
  40282c:	48 89 18             	mov    %rbx,(%rax)
  40282f:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402833:	48 bb 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rbx
  40283a:	74 6f 20 
  40283d:	48 be 77 72 69 74 65 	movabs $0x6f74206574697277,%rsi
  402844:	20 74 6f 
  402847:	48 89 58 10          	mov    %rbx,0x10(%rax)
  40284b:	48 89 70 18          	mov    %rsi,0x18(%rax)
  40284f:	48 ba 20 74 68 65 20 	movabs $0x7265732065687420,%rdx
  402856:	73 65 72 
  402859:	48 89 50 20          	mov    %rdx,0x20(%rax)
  40285d:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%rax)
  402864:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  40286a:	89 c7                	mov    %eax,%edi
  40286c:	e8 9f e8 ff ff       	call   401110 <close@plt>
  402871:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402876:	e9 d4 02 00 00       	jmp    402b4f <submitr+0x772>
  40287b:	8b 95 a4 5f ff ff    	mov    -0xa05c(%rbp),%edx
  402881:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402888:	89 d6                	mov    %edx,%esi
  40288a:	48 89 c7             	mov    %rax,%rdi
  40288d:	e8 48 f7 ff ff       	call   401fda <rio_readinitb>
  402892:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402899:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  4028a0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028a5:	48 89 ce             	mov    %rcx,%rsi
  4028a8:	48 89 c7             	mov    %rax,%rdi
  4028ab:	e8 5a f8 ff ff       	call   40210a <rio_readlineb>
  4028b0:	48 85 c0             	test   %rax,%rax
  4028b3:	7f 7e                	jg     402933 <submitr+0x556>
  4028b5:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  4028bc:	48 bb 45 72 72 6f 72 	movabs $0x43203a726f727245,%rbx
  4028c3:	3a 20 43 
  4028c6:	48 be 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rsi
  4028cd:	20 75 6e 
  4028d0:	48 89 18             	mov    %rbx,(%rax)
  4028d3:	48 89 70 08          	mov    %rsi,0x8(%rax)
  4028d7:	48 b9 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rcx
  4028de:	74 6f 20 
  4028e1:	48 bb 72 65 61 64 20 	movabs $0x7269662064616572,%rbx
  4028e8:	66 69 72 
  4028eb:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4028ef:	48 89 58 18          	mov    %rbx,0x18(%rax)
  4028f3:	48 b9 73 74 20 68 65 	movabs $0x6564616568207473,%rcx
  4028fa:	61 64 65 
  4028fd:	48 bb 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rbx
  402904:	6d 20 73 
  402907:	48 89 48 20          	mov    %rcx,0x20(%rax)
  40290b:	48 89 58 28          	mov    %rbx,0x28(%rax)
  40290f:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%rax)
  402916:	66 c7 40 34 72 00    	movw   $0x72,0x34(%rax)
  40291c:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402922:	89 c7                	mov    %eax,%edi
  402924:	e8 e7 e7 ff ff       	call   401110 <close@plt>
  402929:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40292e:	e9 1c 02 00 00       	jmp    402b4f <submitr+0x772>
  402933:	48 8d b5 e0 df ff ff 	lea    -0x2020(%rbp),%rsi
  40293a:	48 8d 8d a0 5f ff ff 	lea    -0xa060(%rbp),%rcx
  402941:	48 8d 95 e0 bf ff ff 	lea    -0x4020(%rbp),%rdx
  402948:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  40294f:	49 89 f0             	mov    %rsi,%r8
  402952:	be 5a 36 40 00       	mov    $0x40365a,%esi
  402957:	48 89 c7             	mov    %rax,%rdi
  40295a:	b8 00 00 00 00       	mov    $0x0,%eax
  40295f:	e8 3c e8 ff ff       	call   4011a0 <__isoc99_sscanf@plt>
  402964:	8b 85 a0 5f ff ff    	mov    -0xa060(%rbp),%eax
  40296a:	3d c8 00 00 00       	cmp    $0xc8,%eax
  40296f:	0f 84 d5 00 00 00    	je     402a4a <submitr+0x66d>
  402975:	8b 95 a0 5f ff ff    	mov    -0xa060(%rbp),%edx
  40297b:	48 8d 8d e0 df ff ff 	lea    -0x2020(%rbp),%rcx
  402982:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402989:	be 70 36 40 00       	mov    $0x403670,%esi
  40298e:	48 89 c7             	mov    %rax,%rdi
  402991:	b8 00 00 00 00       	mov    $0x0,%eax
  402996:	e8 55 e8 ff ff       	call   4011f0 <sprintf@plt>
  40299b:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  4029a1:	89 c7                	mov    %eax,%edi
  4029a3:	e8 68 e7 ff ff       	call   401110 <close@plt>
  4029a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ad:	e9 9d 01 00 00       	jmp    402b4f <submitr+0x772>
  4029b2:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  4029b9:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  4029c0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029c5:	48 89 ce             	mov    %rcx,%rsi
  4029c8:	48 89 c7             	mov    %rax,%rdi
  4029cb:	e8 3a f7 ff ff       	call   40210a <rio_readlineb>
  4029d0:	48 85 c0             	test   %rax,%rax
  4029d3:	7f 75                	jg     402a4a <submitr+0x66d>
  4029d5:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  4029dc:	48 b9 45 72 72 6f 72 	movabs $0x43203a726f727245,%rcx
  4029e3:	3a 20 43 
  4029e6:	48 bb 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rbx
  4029ed:	20 75 6e 
  4029f0:	48 89 08             	mov    %rcx,(%rax)
  4029f3:	48 89 58 08          	mov    %rbx,0x8(%rax)
  4029f7:	48 b9 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rcx
  4029fe:	74 6f 20 
  402a01:	48 bb 72 65 61 64 20 	movabs $0x6165682064616572,%rbx
  402a08:	68 65 61 
  402a0b:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402a0f:	48 89 58 18          	mov    %rbx,0x18(%rax)
  402a13:	48 b9 64 65 72 73 20 	movabs $0x6f72662073726564,%rcx
  402a1a:	66 72 6f 
  402a1d:	48 bb 6d 20 73 65 72 	movabs $0x726576726573206d,%rbx
  402a24:	76 65 72 
  402a27:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402a2b:	48 89 58 28          	mov    %rbx,0x28(%rax)
  402a2f:	c6 40 30 00          	movb   $0x0,0x30(%rax)
  402a33:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402a39:	89 c7                	mov    %eax,%edi
  402a3b:	e8 d0 e6 ff ff       	call   401110 <close@plt>
  402a40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a45:	e9 05 01 00 00       	jmp    402b4f <submitr+0x772>
  402a4a:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402a51:	be 9d 36 40 00       	mov    $0x40369d,%esi
  402a56:	48 89 c7             	mov    %rax,%rdi
  402a59:	e8 f2 e6 ff ff       	call   401150 <strcmp@plt>
  402a5e:	85 c0                	test   %eax,%eax
  402a60:	0f 85 4c ff ff ff    	jne    4029b2 <submitr+0x5d5>
  402a66:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402a6d:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402a74:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a79:	48 89 ce             	mov    %rcx,%rsi
  402a7c:	48 89 c7             	mov    %rax,%rdi
  402a7f:	e8 86 f6 ff ff       	call   40210a <rio_readlineb>
  402a84:	48 85 c0             	test   %rax,%rax
  402a87:	7f 7c                	jg     402b05 <submitr+0x728>
  402a89:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402a90:	48 b9 45 72 72 6f 72 	movabs $0x43203a726f727245,%rcx
  402a97:	3a 20 43 
  402a9a:	48 bb 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rbx
  402aa1:	20 75 6e 
  402aa4:	48 89 08             	mov    %rcx,(%rax)
  402aa7:	48 89 58 08          	mov    %rbx,0x8(%rax)
  402aab:	48 ba 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rdx
  402ab2:	74 6f 20 
  402ab5:	48 b9 72 65 61 64 20 	movabs $0x6174732064616572,%rcx
  402abc:	73 74 61 
  402abf:	48 89 50 10          	mov    %rdx,0x10(%rax)
  402ac3:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402ac7:	48 bb 74 75 73 20 6d 	movabs $0x7373656d20737574,%rbx
  402ace:	65 73 73 
  402ad1:	48 be 61 67 65 20 66 	movabs $0x6d6f726620656761,%rsi
  402ad8:	72 6f 6d 
  402adb:	48 89 58 20          	mov    %rbx,0x20(%rax)
  402adf:	48 89 70 28          	mov    %rsi,0x28(%rax)
  402ae3:	48 bf 20 73 65 72 76 	movabs $0x72657672657320,%rdi
  402aea:	65 72 00 
  402aed:	48 89 78 30          	mov    %rdi,0x30(%rax)
  402af1:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402af7:	89 c7                	mov    %eax,%edi
  402af9:	e8 12 e6 ff ff       	call   401110 <close@plt>
  402afe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b03:	eb 4a                	jmp    402b4f <submitr+0x772>
  402b05:	48 8d 95 e0 7f ff ff 	lea    -0x8020(%rbp),%rdx
  402b0c:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402b13:	48 89 d6             	mov    %rdx,%rsi
  402b16:	48 89 c7             	mov    %rax,%rdi
  402b19:	e8 42 e5 ff ff       	call   401060 <strcpy@plt>
  402b1e:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402b24:	89 c7                	mov    %eax,%edi
  402b26:	e8 e5 e5 ff ff       	call   401110 <close@plt>
  402b2b:	48 8b 85 68 5f ff ff 	mov    -0xa098(%rbp),%rax
  402b32:	be a0 36 40 00       	mov    $0x4036a0,%esi
  402b37:	48 89 c7             	mov    %rax,%rdi
  402b3a:	e8 11 e6 ff ff       	call   401150 <strcmp@plt>
  402b3f:	85 c0                	test   %eax,%eax
  402b41:	75 07                	jne    402b4a <submitr+0x76d>
  402b43:	b8 00 00 00 00       	mov    $0x0,%eax
  402b48:	eb 05                	jmp    402b4f <submitr+0x772>
  402b4a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b4f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402b53:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402b5a:	00 00 
  402b5c:	74 05                	je     402b63 <submitr+0x786>
  402b5e:	e8 4d e5 ff ff       	call   4010b0 <__stack_chk_fail@plt>
  402b63:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402b67:	c9                   	leave  
  402b68:	c3                   	ret    

0000000000402b69 <init_timeout>:
  402b69:	55                   	push   %rbp
  402b6a:	48 89 e5             	mov    %rsp,%rbp
  402b6d:	48 83 ec 10          	sub    $0x10,%rsp
  402b71:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402b74:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402b78:	74 28                	je     402ba2 <init_timeout+0x39>
  402b7a:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402b7e:	79 07                	jns    402b87 <init_timeout+0x1e>
  402b80:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
  402b87:	be b1 1f 40 00       	mov    $0x401fb1,%esi
  402b8c:	bf 0e 00 00 00       	mov    $0xe,%edi
  402b91:	e8 ca e5 ff ff       	call   401160 <signal@plt>
  402b96:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402b99:	89 c7                	mov    %eax,%edi
  402b9b:	e8 60 e5 ff ff       	call   401100 <alarm@plt>
  402ba0:	eb 01                	jmp    402ba3 <init_timeout+0x3a>
  402ba2:	90                   	nop
  402ba3:	c9                   	leave  
  402ba4:	c3                   	ret    

0000000000402ba5 <init_driver>:
  402ba5:	55                   	push   %rbp
  402ba6:	48 89 e5             	mov    %rsp,%rbp
  402ba9:	48 83 ec 50          	sub    $0x50,%rsp
  402bad:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  402bb1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402bb8:	00 00 
  402bba:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402bbe:	31 c0                	xor    %eax,%eax
  402bc0:	48 c7 45 d0 a3 36 40 	movq   $0x4036a3,-0x30(%rbp)
  402bc7:	00 
  402bc8:	c7 45 c8 03 d9 00 00 	movl   $0xd903,-0x38(%rbp)
  402bcf:	be 01 00 00 00       	mov    $0x1,%esi
  402bd4:	bf 0d 00 00 00       	mov    $0xd,%edi
  402bd9:	e8 82 e5 ff ff       	call   401160 <signal@plt>
  402bde:	be 01 00 00 00       	mov    $0x1,%esi
  402be3:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402be8:	e8 73 e5 ff ff       	call   401160 <signal@plt>
  402bed:	be 01 00 00 00       	mov    $0x1,%esi
  402bf2:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bf7:	e8 64 e5 ff ff       	call   401160 <signal@plt>
  402bfc:	ba 00 00 00 00       	mov    $0x0,%edx
  402c01:	be 01 00 00 00       	mov    $0x1,%esi
  402c06:	bf 02 00 00 00       	mov    $0x2,%edi
  402c0b:	e8 50 e6 ff ff       	call   401260 <socket@plt>
  402c10:	89 45 cc             	mov    %eax,-0x34(%rbp)
  402c13:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
  402c17:	79 52                	jns    402c6b <init_driver+0xc6>
  402c19:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402c1d:	48 be 45 72 72 6f 72 	movabs $0x43203a726f727245,%rsi
  402c24:	3a 20 43 
  402c27:	48 bf 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdi
  402c2e:	20 75 6e 
  402c31:	48 89 30             	mov    %rsi,(%rax)
  402c34:	48 89 78 08          	mov    %rdi,0x8(%rax)
  402c38:	48 be 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rsi
  402c3f:	74 6f 20 
  402c42:	48 bf 63 72 65 61 74 	movabs $0x7320657461657263,%rdi
  402c49:	65 20 73 
  402c4c:	48 89 70 10          	mov    %rsi,0x10(%rax)
  402c50:	48 89 78 18          	mov    %rdi,0x18(%rax)
  402c54:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rax)
  402c5b:	66 c7 40 24 74 00    	movw   $0x74,0x24(%rax)
  402c61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c66:	e9 fb 00 00 00       	jmp    402d66 <init_driver+0x1c1>
  402c6b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402c6f:	48 89 c7             	mov    %rax,%rdi
  402c72:	e8 f9 e4 ff ff       	call   401170 <gethostbyname@plt>
  402c77:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  402c7b:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  402c80:	75 2e                	jne    402cb0 <init_driver+0x10b>
  402c82:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  402c86:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402c8a:	be b8 35 40 00       	mov    $0x4035b8,%esi
  402c8f:	48 89 c7             	mov    %rax,%rdi
  402c92:	b8 00 00 00 00       	mov    $0x0,%eax
  402c97:	e8 54 e5 ff ff       	call   4011f0 <sprintf@plt>
  402c9c:	8b 45 cc             	mov    -0x34(%rbp),%eax
  402c9f:	89 c7                	mov    %eax,%edi
  402ca1:	e8 6a e4 ff ff       	call   401110 <close@plt>
  402ca6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cab:	e9 b6 00 00 00       	jmp    402d66 <init_driver+0x1c1>
  402cb0:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402cb4:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  402cbb:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  402cc2:	00 
  402cc3:	66 c7 45 e0 02 00    	movw   $0x2,-0x20(%rbp)
  402cc9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402ccd:	8b 40 14             	mov    0x14(%rax),%eax
  402cd0:	48 63 d0             	movslq %eax,%rdx
  402cd3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402cd7:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cdb:	48 8b 00             	mov    (%rax),%rax
  402cde:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  402ce2:	48 83 c1 04          	add    $0x4,%rcx
  402ce6:	48 89 c6             	mov    %rax,%rsi
  402ce9:	48 89 cf             	mov    %rcx,%rdi
  402cec:	e8 cf e4 ff ff       	call   4011c0 <memmove@plt>
  402cf1:	8b 45 c8             	mov    -0x38(%rbp),%eax
  402cf4:	0f b7 c0             	movzwl %ax,%eax
  402cf7:	89 c7                	mov    %eax,%edi
  402cf9:	e8 d2 e3 ff ff       	call   4010d0 <htons@plt>
  402cfe:	66 89 45 e2          	mov    %ax,-0x1e(%rbp)
  402d02:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  402d06:	8b 45 cc             	mov    -0x34(%rbp),%eax
  402d09:	ba 10 00 00 00       	mov    $0x10,%edx
  402d0e:	48 89 ce             	mov    %rcx,%rsi
  402d11:	89 c7                	mov    %eax,%edi
  402d13:	e8 f8 e4 ff ff       	call   401210 <connect@plt>
  402d18:	85 c0                	test   %eax,%eax
  402d1a:	79 2e                	jns    402d4a <init_driver+0x1a5>
  402d1c:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  402d1f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  402d23:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402d27:	be b8 36 40 00       	mov    $0x4036b8,%esi
  402d2c:	48 89 c7             	mov    %rax,%rdi
  402d2f:	b8 00 00 00 00       	mov    $0x0,%eax
  402d34:	e8 b7 e4 ff ff       	call   4011f0 <sprintf@plt>
  402d39:	8b 45 cc             	mov    -0x34(%rbp),%eax
  402d3c:	89 c7                	mov    %eax,%edi
  402d3e:	e8 cd e3 ff ff       	call   401110 <close@plt>
  402d43:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d48:	eb 1c                	jmp    402d66 <init_driver+0x1c1>
  402d4a:	8b 45 cc             	mov    -0x34(%rbp),%eax
  402d4d:	89 c7                	mov    %eax,%edi
  402d4f:	e8 bc e3 ff ff       	call   401110 <close@plt>
  402d54:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402d58:	66 c7 00 4f 4b       	movw   $0x4b4f,(%rax)
  402d5d:	c6 40 02 00          	movb   $0x0,0x2(%rax)
  402d61:	b8 00 00 00 00       	mov    $0x0,%eax
  402d66:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402d6a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402d71:	00 00 
  402d73:	74 05                	je     402d7a <init_driver+0x1d5>
  402d75:	e8 36 e3 ff ff       	call   4010b0 <__stack_chk_fail@plt>
  402d7a:	c9                   	leave  
  402d7b:	c3                   	ret    

0000000000402d7c <driver_post>:
  402d7c:	55                   	push   %rbp
  402d7d:	48 89 e5             	mov    %rsp,%rbp
  402d80:	48 83 ec 30          	sub    $0x30,%rsp
  402d84:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402d88:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402d8c:	89 55 dc             	mov    %edx,-0x24(%rbp)
  402d8f:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  402d93:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  402d97:	74 2a                	je     402dc3 <driver_post+0x47>
  402d99:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402d9d:	48 89 c6             	mov    %rax,%rsi
  402da0:	bf e1 36 40 00       	mov    $0x4036e1,%edi
  402da5:	b8 00 00 00 00       	mov    $0x0,%eax
  402daa:	e8 31 e3 ff ff       	call   4010e0 <printf@plt>
  402daf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402db3:	66 c7 00 4f 4b       	movw   $0x4b4f,(%rax)
  402db8:	c6 40 02 00          	movb   $0x0,0x2(%rax)
  402dbc:	b8 00 00 00 00       	mov    $0x0,%eax
  402dc1:	eb 62                	jmp    402e25 <driver_post+0xa9>
  402dc3:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  402dc8:	74 49                	je     402e13 <driver_post+0x97>
  402dca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402dce:	0f b6 00             	movzbl (%rax),%eax
  402dd1:	0f b6 c0             	movzbl %al,%eax
  402dd4:	85 c0                	test   %eax,%eax
  402dd6:	74 3b                	je     402e13 <driver_post+0x97>
  402dd8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402ddc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402de0:	48 83 ec 08          	sub    $0x8,%rsp
  402de4:	ff 75 d0             	push   -0x30(%rbp)
  402de7:	49 89 d1             	mov    %rdx,%r9
  402dea:	41 b8 f8 36 40 00    	mov    $0x4036f8,%r8d
  402df0:	48 89 c1             	mov    %rax,%rcx
  402df3:	ba ff 36 40 00       	mov    $0x4036ff,%edx
  402df8:	be 03 d9 00 00       	mov    $0xd903,%esi
  402dfd:	bf a3 36 40 00       	mov    $0x4036a3,%edi
  402e02:	e8 d6 f5 ff ff       	call   4023dd <submitr>
  402e07:	48 83 c4 10          	add    $0x10,%rsp
  402e0b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402e0e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402e11:	eb 12                	jmp    402e25 <driver_post+0xa9>
  402e13:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402e17:	66 c7 00 4f 4b       	movw   $0x4b4f,(%rax)
  402e1c:	c6 40 02 00          	movb   $0x0,0x2(%rax)
  402e20:	b8 00 00 00 00       	mov    $0x0,%eax
  402e25:	c9                   	leave  
  402e26:	c3                   	ret    

0000000000402e27 <hash>:
  402e27:	55                   	push   %rbp
  402e28:	48 89 e5             	mov    %rsp,%rbp
  402e2b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402e2f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  402e36:	eb 1d                	jmp    402e55 <hash+0x2e>
  402e38:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402e3b:	6b c8 67             	imul   $0x67,%eax,%ecx
  402e3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402e42:	48 8d 50 01          	lea    0x1(%rax),%rdx
  402e46:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402e4a:	0f b6 00             	movzbl (%rax),%eax
  402e4d:	0f be c0             	movsbl %al,%eax
  402e50:	01 c8                	add    %ecx,%eax
  402e52:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402e55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402e59:	0f b6 00             	movzbl (%rax),%eax
  402e5c:	84 c0                	test   %al,%al
  402e5e:	75 d8                	jne    402e38 <hash+0x11>
  402e60:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402e63:	5d                   	pop    %rbp
  402e64:	c3                   	ret    

0000000000402e65 <check>:
  402e65:	55                   	push   %rbp
  402e66:	48 89 e5             	mov    %rsp,%rbp
  402e69:	89 7d ec             	mov    %edi,-0x14(%rbp)
  402e6c:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402e6f:	c1 e8 1c             	shr    $0x1c,%eax
  402e72:	85 c0                	test   %eax,%eax
  402e74:	75 07                	jne    402e7d <check+0x18>
  402e76:	b8 00 00 00 00       	mov    $0x0,%eax
  402e7b:	eb 33                	jmp    402eb0 <check+0x4b>
  402e7d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  402e84:	eb 1f                	jmp    402ea5 <check+0x40>
  402e86:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402e89:	8b 55 ec             	mov    -0x14(%rbp),%edx
  402e8c:	89 c1                	mov    %eax,%ecx
  402e8e:	d3 ea                	shr    %cl,%edx
  402e90:	89 d0                	mov    %edx,%eax
  402e92:	0f b6 c0             	movzbl %al,%eax
  402e95:	83 f8 0a             	cmp    $0xa,%eax
  402e98:	75 07                	jne    402ea1 <check+0x3c>
  402e9a:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9f:	eb 0f                	jmp    402eb0 <check+0x4b>
  402ea1:	83 45 fc 08          	addl   $0x8,-0x4(%rbp)
  402ea5:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%rbp)
  402ea9:	7e db                	jle    402e86 <check+0x21>
  402eab:	b8 01 00 00 00       	mov    $0x1,%eax
  402eb0:	5d                   	pop    %rbp
  402eb1:	c3                   	ret    

0000000000402eb2 <gencookie>:
  402eb2:	55                   	push   %rbp
  402eb3:	48 89 e5             	mov    %rsp,%rbp
  402eb6:	48 83 ec 20          	sub    $0x20,%rsp
  402eba:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402ebe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402ec2:	48 89 c7             	mov    %rax,%rdi
  402ec5:	e8 5d ff ff ff       	call   402e27 <hash>
  402eca:	89 c7                	mov    %eax,%edi
  402ecc:	e8 5f e2 ff ff       	call   401130 <srand@plt>
  402ed1:	e8 7a e3 ff ff       	call   401250 <rand@plt>
  402ed6:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402ed9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402edc:	89 c7                	mov    %eax,%edi
  402ede:	e8 82 ff ff ff       	call   402e65 <check>
  402ee3:	85 c0                	test   %eax,%eax
  402ee5:	74 ea                	je     402ed1 <gencookie+0x1f>
  402ee7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402eea:	c9                   	leave  
  402eeb:	c3                   	ret    

Disassembly of section .fini:

0000000000402eec <_fini>:
  402eec:	f3 0f 1e fa          	endbr64 
  402ef0:	48 83 ec 08          	sub    $0x8,%rsp
  402ef4:	48 83 c4 08          	add    $0x8,%rsp
  402ef8:	c3                   	ret    
