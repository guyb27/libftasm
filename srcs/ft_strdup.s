global ft_strdup
extern ft_strlen
extern malloc
extern ft_strcpy

section .text
  ft_strdup:
    push rbp
    mov rbp, rsp
    push rdi
    call ft_strlen
    mov rdi, rax
    call malloc
    pop rsi
    mov rdi, rax
    call ft_strcpy;char *ft_strcpy(char *dest, const char *src)
    pop rbp
    ret    
