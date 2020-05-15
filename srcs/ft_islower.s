global ft_islower

section .text
  ft_islower:
    push rbp
    mov rbp, rsp
    cmp rdi, 97		;Compare le premier param avec 97
    jl is_not_lower	;Si il est <, go au drapeau "is_not_lower"
    cmp rdi, 122	;Compare le premier param avec 122
    jg is_not_lower	;Si il est >, go au drapeau "is_not_lower"
    mov rax, 512	;retourne 512 comme la vrai fonction
    pop rbp
    ret

  is_not_lower:
    mov rax, 0		;retourne 0
    pop rbp
    ret
