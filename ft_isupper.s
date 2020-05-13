global ft_isupper

section .text
  ft_isupper:
    cmp rdi, 65		;Compare le premier param avec 48
    jl is_not_upper	;Si il est <, go au drapeau "is_not_print"
    cmp rdi, 90		;Compare le premier param avec 57
    jg is_not_upper	;Si il est >, go au drapeau "is_not_print"
    mov rax, 256	;retourne 256 comme la vrai fonction
    ret

  is_not_upper:
    mov rax, 0		;retourne 0
    ret
