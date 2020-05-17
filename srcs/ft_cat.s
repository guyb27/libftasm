global ft_cat
extern ft_putstr
extern ft_bzero

section .text
  ft_cat:
    push rbp
    mov rbp, rsp

    cmp rdi, 0
    jl end
    read_line:
      mov rax, 0
      mov rsi, buf
      mov rdx, 1024
      push rdi
      syscall
      pop rdi
      cmp rax, 0
      jle end
      push rdi
      push rax
      mov rax, 1
      mov rdi, 1
      mov rsi, buf
      pop rdx
      syscall
      mov rdi, buf
      mov rsi, 1024
      call ft_bzero
      pop rdi
      jmp read_line
      
    end:
      pop rbp
      ret

section .bss
  buf resb 1024
