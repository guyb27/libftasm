global ft_isprint

section .text
  ft_isprint:
    cmp rdi, 32		;Compare le premier param avec 32
    jl is_not_print	;Si il est <, go au drapeau "is_not_print"
    cmp rdi, 126	;Compare le premier param avec 126
    jg is_not_print	;Si il est >, go au drapeau "is_not_print"
    mov rax, 16384	;retourne 16384 comme la vrai fonction
    ret

  is_not_print:
    mov rax, 0		;retourne 0
    ret
