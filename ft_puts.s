global ft_puts

section .text
  ft_puts:
    ;push rbp
    ;push rdi
    mov rdx, 3;METTRE LA LEN ICI
    mov rax, 1
    mov rsi, rdi
    mov rdi, 1
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, yo
    mov rdx, 1
    syscall
    ;pop rbp
    ret

section .data
  yo db 10
