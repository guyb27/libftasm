global ft_isalpha
extern ft_isupper
extern ft_islower

section .text
  ft_isalpha:
    push rbp		;Sauvegarde le registre de stack
    mov rbp, rsp
    push rdi
    call ft_isupper	;On regarde si c est une majuscule
    pop rdi		;On recupere rdi, au cas ou il a ete
			;modifie
    cmp rax, 0		;On compare le retour avec 0
    jne is_alpha	;si il n est pas egal a zero, on jump
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
