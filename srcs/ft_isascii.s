global ft_isascii

section .text
  ft_isascii:
    cmp rdi, 0		;Compare le premier param avec 0
    jl is_not_ascii	;Si il est <, go au drapeau "is_not_ascii"
    cmp rdi, 127	;Compare le premier param avec 127
    jg is_not_ascii	;Si il est >, go au drapeau "is_not_ascii"
    mov rax, 1		;retourne 1 comme la vrai fonction
    ret

  is_not_ascii:
    mov rax, 0		;retourne 0
    ret
