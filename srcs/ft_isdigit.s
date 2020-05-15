global ft_isdigit

section .text
  ft_isdigit:
    push rbp
    mov rbp, rsp
    cmp rdi, 48		;Compare le premier param avec 48
    jl is_not_digit	;Si il est <, go au drapeau "is_not_digit"
    cmp rdi, 57		;Compare le premier param avec 57
    jg is_not_digit	;Si il est >, go au drapeau "is_not_digit"
    mov rax, 2048	;retourne 2048
    pop rbp
    ret

  is_not_digit:
    mov rax, 0		;retourne 0
    pop rbp
    ret
