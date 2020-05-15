global ft_tolower
extern ft_isupper

section .text
  ft_tolower:
    push rbp
    mov rbp, rsp
    push rdi
    call ft_isupper
    pop rdi
    cmp rax, 0
    jne is_lower
    mov rax, rdi
    pop rbp
    ret

  is_lower:
    add rdi, 32
    mov rax, rdi
    pop rbp
    ret
