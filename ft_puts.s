global ft_puts
extern ft_strlen

section .text
  ft_puts:
    push rbp
    mov rbp, rsp
    push rdi
    call ft_strlen
    pop rdi
    mov rdx, rax;
    mov rax, 1
    mov rsi, rdi
    mov rdi, 1
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, yo
    mov rdx, 1
    syscall
    pop rbp
    ret

section .data
  yo db 10
