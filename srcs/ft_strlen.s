global ft_strlen

section .text
  ft_strlen:
    push rbp	;
    mov rbp, rsp;
    cld		;Permet de mettre DF(Direction Flag)
		;a 0 afin de commencer a partir de
		;la gauche (deja definie par default)
    mov rcx, -1	;Registre de compteur qui va se decrementer
    mov al, 0	;Registre de comparaison pour scasb qui va
		;placer le ZF flag a 1 si les bytes sont identiques
    repne scasb	;repne va incrementer rdi tant que scasb ne
		;met pas le ZF flag a 1
		;rdi : element a examiner par rapport a rax
    mov rax, rcx;on recupere le compteur
    neg rax	;on passe le compteur en positif
    sub rax, 2	;on lui soustrais 2 car on l a fait demarer a -1
    pop rbp	;
    ret		;
