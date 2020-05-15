global ft_puts
extern ft_fputs

section .text		;Code section
  ft_puts:
    push rbp		;Save la stackframe
    mov rbp, rsp
    mov rsi, 1	;
    call ft_fputs	;void ft_fputs(const char *s, int fd)
    pop rbp		;
    ret			;
