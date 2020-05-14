global ft_bzero
extern ft_memset

section .text
  ft_bzero:
    push rbp
    mov rbp, rsp
    mov rdx, rsi
    mov rsi, 0
    call ft_memset
    pop rbp
    ret
