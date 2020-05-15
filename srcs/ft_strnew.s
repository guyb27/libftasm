global ft_strnew
extern ft_memalloc

section .text
  ft_strnew:
    push rbp
    mov rbp, rsp
    add rdi, 1
    call ft_memalloc		;void *memalloc(size_t size)
    pop rbp
    ret
