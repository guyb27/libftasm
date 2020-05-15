global ft_memalloc
extern ft_bzero
extern malloc

section .text
  ft_memalloc:
    push rbp
    mov rbp, rsp

    push rdi
    call malloc
    pop rdi
    cmp rax, 0
    je ft_exit
    mov rsi, rdi
    mov rdi, rax
    call ft_bzero
    pop rbp
    ret

  ft_exit:
    mov rax, 0
    pop rbp
    ret
