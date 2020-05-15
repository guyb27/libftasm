.PHONY: all clean fclean re Makefile

NAME = libftasm.a

MAKEFILE_NAME = Makefile-$(lastword $(subst /, ,$(NAME)))

SRCS_PATH = ./srcs/

OBJS_PATH = ./objs/

SRCS_FILES = ft_bzero.s \
	ft_cat.s \
	ft_fputs.s \
	ft_isalnum.s \
	ft_isalpha.s \
	ft_isascii.s \
	ft_isdigit.s \
	ft_islower.s \
	ft_isprint.s \
	ft_isupper.s \
	ft_memalloc.s \
	ft_strnew.s \
	ft_memcpy.s \
	ft_memset.s \
	ft_puts.s \
	ft_putstr_fd.s \
	ft_putstr.s \
	ft_strcat.s \
	ft_strcpy.s \
	ft_strdup.s \
	ft_strlen.s \
	ft_tolower.s \
	ft_toupper.s

OBJS = $(addprefix $(OBJS_PATH), $(SRCS_FILES:.s=.o))

NB_FILES = $(words $(SRCS_FILES))

NB_FILES_COMPILED = 0

NB_FILES_INCREMENT = @$(eval NB_FILES_COMPILED=$(shell echo $$(($(NB_FILES_COMPILED) + 1))))

ASM_FLAGS = -f elf64

ASM_COMPILER = nasm


all: $(NAME)

$(NAME): $(OBJS_PATH) $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo $(NAME) Completed

$(OBJS_PATH):
	@mkdir $(OBJS_PATH)

$(OBJS_PATH)%.o: $(SRCS_PATH)%.s
	@$(ASM_COMPILER) $(ASM_FLAGS) -o $@ $^
	@$(NB_FILES_INCREMENT)
	@echo $(MAKEFILE_NAME): [$(NB_FILES_COMPILED) / $(NB_FILES)] "Linking ->" $@

clean:
	@rm -rf $(OBJS_PATH)
	@echo Clean done !

fclean: clean
	@rm -f $(NAME)
	@echo Fclean done !

re: fclean all
