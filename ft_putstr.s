global ft_putstr
extern ft_putstr_fd

section .text
  ft_putstr:
    push rbp
    mov rbp, rsp
    mov rsi, 1
    call ft_putstr_fd
    pop rbp
    ret
