gcc -c main.c
gcc main.o ft_puts.o ft_isdigit.o -o test ft_isprint.o ft_isascii.o ft_islower.o ft_isupper.o ft_isalpha.o
nasm -f elf64 ft_isalpha.s
