global ft_islower

section .text
  ft_islower:
    cmp rdi, 97		;Compare le premier param avec 48
    jl is_not_lower	;Si il est <, go au drapeau "is_not_print"
    cmp rdi, 122	;Compare le premier param avec 57
    jg is_not_lower	;Si il est >, go au drapeau "is_not_print"
    mov rax, 512	;retourne 512 comme la vrai fonction
    ret

  is_not_lower:
    mov rax, 0		;retourne 0
    ret
