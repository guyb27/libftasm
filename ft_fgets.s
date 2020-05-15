global ft_fgets

;rdi:char *s, rsi:int size, rdx:FILE *stream

section .text
  ft_fgets:
    push rbp
    mov rbp, rsp
    mov rax, 0
    push rdi
    mov rdi, rdx
    mov rdx, rsi
    pop rsi
    push rsi
    syscall
    pop rax
    pop rbp
    ret
