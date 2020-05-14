global ft_puts
extern ft_strlen

section .text		;Code section
  ft_puts:
    push rbp		;Save la stackframe
    mov rbp, rsp	;
    push rdi		;Save rdi
    call ft_strlen	;Call Ft_strlen
    pop rdi		;Get rdi
    mov rdx, rax;	;
    mov rax, 1		;Call write
    mov rsi, rdi	;
    mov rdi, 1		;
    syscall		;
    mov rax, 1		;Call write
    mov rdi, 1		;
    mov rsi, endl	;
    mov rdx, 1		;
    syscall		;
    pop rbp		;
    ret			;

section .data		;Data section with all variables
  endl db 10		;Create variable endl with '\n'
