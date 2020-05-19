global ft_strcpy
extern ft_strlen
extern ft_strncpy

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
    mov rdx, rax
    add rdx, 1
    call ft_strncpy;void *ft_strncpy(void *dest, const void *src, size_t n)
    pop rbp
    ret
