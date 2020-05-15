global ft_fputs
extern ft_putstr_fd

section .text		;Code section
  ft_fputs:
    push rbp		;Save la stackframe
    mov rbp, rsp	;
    push rsi
    call ft_putstr_fd

    mov rdi, endl
    pop rsi
    call ft_putstr_fd	;Call Ft_putchar_fd
    pop rbp		;
    ret			;

section .data		;Data section with all variables
  endl db 10		;Create variable endl with '\n'
