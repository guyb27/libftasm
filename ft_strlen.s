global ft_strlen

section .text
  ft_strlen:
    push rbp
    mov rbp, rsp
    cld		;Permet de mettre DF(Direction Flag)
		;a 0 afin de commencer a partir de la gauche
    mov rcx, -1
    mov al, 0
    repne scasb
    mov rax, rcx
    neg rax
    sub rax, 2
    pop rbp
    ret
