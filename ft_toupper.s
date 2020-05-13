global ft_toupper
extern ft_islower

section .text
  ft_toupper:
    push rbp
    mov rbp, rsp
    push rdi
    call ft_islower
    pop rdi
    cmp rax, 0
    jne is_upper
    mov rax, rdi
    pop rbp
    ret

  is_upper:
    sub rdi, 32
    mov rax, rdi
    pop rbp
    ret
