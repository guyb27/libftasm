global ft_memset

section .text
  ft_memset:
    push rbp
    mov rbp, rsp
    push rdi		;save rdi
    mov rax, rsi	;valeur de la sequence de
			;bytes qui doivent remplir rdi
    mov rcx, rdx	;init counter pour rep
    rep stosb		;stosb va remplir rdi
    pop rax		;on recupere rdi
    pop rbp
    ret
