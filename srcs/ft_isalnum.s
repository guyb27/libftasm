global ft_isalnum
extern ft_isalpha
extern ft_isdigit

section .text
  ft_isalnum:
    push rbp;
    mov rbp, rsp
    push rdi
    call ft_isalpha
    pop rdi
    cmp rax, 0
    jne is_alnum
    call ft_isdigit
    cmp rax, 0
    jne is_alnum
    mov rax, 0
    pop rbp
    ret

  is_alnum:
    mov rax, 8
    pop rbp
    ret
