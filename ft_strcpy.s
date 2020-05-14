global ft_strcpy
extern ft_strlen
extern ft_memcpy

section .text
  ft_strcpy:
    push rbp
    mov rbp, rsp
    push rdi
    push rsi
    mov rdi, rsi
    call ft_strlen
    pop rsi
    pop rdi
    push rdi
    mov rdx, rax
    add rdx, 1
    call ft_memcpy
    pop rax
    pop rbp
    ret
