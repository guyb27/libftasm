global ft_puts
section .text
  ft_puts:
    push rbp
    mov rax, 1;write syscall
    mov rdi, 1;fd for write
    mov rsi, rdi;rsi:buffer pour write, rdi: av[1]
    mov rdx, 4
    syscall
    pop rbp
    ret
