global ft_strncpy
extern ft_memcpy

;char *ft_strncpy(char *dest, const char *src, size_t n);
;rdi, rsi, rdx

section .text
  ft_strncpy:
    push rbp
    mov rbp, rsp
    call ft_memcpy;void *ft_memcpy(void *dest, const void *src, size_t n)
    pop rbp
    ret
