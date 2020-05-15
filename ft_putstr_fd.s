global ft_putstr_fd
extern ft_strlen

section .text
  ft_putstr_fd:
    push rbp
    mov rbp, rsp

    push rdi
    push rsi
    call ft_strlen
    mov rdx, rax
    mov rax, 1
    pop rdi
    pop rsi
    syscall

    pop rbp
    ret
