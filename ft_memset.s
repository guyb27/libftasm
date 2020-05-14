global ft_memset

section .text
  ft_memset:
    push rbp
    mov rbp, rsp
    push rdi		;save rdi
    mov rax, rsi	;valeur du byte qui doit remplir rdi
    mov rcx, rdx	;init counter pour rep
    rep stosb		;stosb va remplir rdi
    pop rax
    pop rbp
    ret
