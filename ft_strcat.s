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
    add rdi, rax;incrementer son address de rax byte
    call ft_strcpy
    pop rax
    pop rbp
    ret
