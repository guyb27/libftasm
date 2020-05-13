global ft_isalpha
extern ft_isupper
extern ft_islower

section .text
  ft_isalpha:
    push rbp
    push rdi
    call ft_isupper	;On regarde si c est une majuscule
    cmp rax, 0		;On compare le retour avec 0
    jne is_alpha	;si il n est pas egal a zero, on jump
    pop rdi		;On recupere rdi, au cas ou il a ete modifie
    call ft_islower	;on regarde si c est ine minuscule
    cmp rax, 0		;On compare le retour avec 0
    jne is_alpha	;si il n est pas egal a zero, on jump
    mov rax, 0		;retourne 0 comme la vrai fonction
    pop rbp
    ret

  is_alpha:
    mov rax, 1024	;retourne 1024 comme la vrai fonction
    pop rbp
    ret
