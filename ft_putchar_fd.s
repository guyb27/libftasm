global ft_putchar_fd

section .text
  ft_putchar_fd:
    push rbp
    mov rbp, rsp

    mov rax, 1
    mov rdi, 1
;    mov buffer, [rsi]
 ;   mov rsi, buffer
    mov rdx, 1
    syscall

    pop rbp
    ret

section .bss
  buffer resw 1
