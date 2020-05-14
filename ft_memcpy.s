global ft_memcpy

section .text
  ft_memcpy:
    push rbp
    mov rbp, rsp
    push rdi		;save rdi
    mov rcx, rdx	;rcx: counter for rep
    rep movsb		;rdi:dest, rsi:source
    pop rax		;on retourne la destination
    pop rbp
    ret
