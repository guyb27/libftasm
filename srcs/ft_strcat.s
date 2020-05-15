global ft_strcat
extern ft_strcpy
extern ft_strlen

section .text
  ft_strcat:
    push rbp
    mov rbp, rsp
    push rdi
    push rsi
    call ft_strlen
    pop rsi
    pop rdi
    push rdi
    add rdi, rax	;incremente son address de rax bytes
    call ft_strcpy;char *ft_strcpy(char *dest, const char *src)
    pop rax
    pop rbp
    ret
