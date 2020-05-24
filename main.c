#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>

void	ft_puts(const char *s);
void	ft_fputs(const char *s, int fd);
int	ft_isdigit(int c);
int	ft_isprint(int c);
int	ft_isascii(int c);
int	ft_islower(int c);
int	ft_isupper(int c);
int	ft_isalpha(int c);
int	ft_isalnum(int c);
int	ft_tolower(int c);
int	ft_toupper(int c);
int	ft_strlen(char *str);
void	*ft_memset(void *s, int c, size_t n);
void	*ft_bzero(void *s, size_t n);
void	*ft_memcpy(void *dest, const void *src, size_t n);
char	*ft_strcpy(char *dest, const char *src);
char	*ft_strcat(char *dest, const char *src);
char	*ft_strdup(const char *s);
int	ft_putstr_fd(char *s, int fd);
int	ft_putstr(char *s);
void	ft_cat(int fd);
void	*ft_memalloc(size_t size);
void	*ft_strnew(size_t size);


int	test_isdigit(void)
{
	if (ft_isdigit('4') != isdigit('4'))
		return (0);
	if (ft_isdigit('0') != isdigit('0'))
		return (0);
	if (ft_isdigit('9') != isdigit('9'))
		return (0);
	if (ft_isdigit(47) != isdigit(47))
		return (0);
	if (ft_isdigit(58) != isdigit(58))
		return (0);
	if (ft_isdigit('a') != isdigit('a'))
		return (0);
	return (1);
}

int	test_isprint(void)
{
	if (ft_isprint(31) != isprint(31))
		return (0);
	if (ft_isprint(' ') != isprint(' '))
		return (0);
	if (ft_isprint('~') != isprint('~'))
		return (0);
	if (ft_isprint(127) != isprint(127))
		return (0);
	if (ft_isprint(200) != isprint(200))
		return (0);
	if (ft_isprint('0') != isprint('0'))
		return (0);
	return (1);
}

int	test_isascii(void)
{
	if (ft_isascii(-1) != isascii(-1))
		return (0);
	if (ft_isascii(0) != isascii(0))
		return (0);
	if (ft_isascii(127) != isascii(127))
		return (0);
	if (ft_isascii(128) != isascii(128))
		return (0);
	if (ft_isascii(20) != isascii(20))
		return (0);
	if (ft_isascii(255) != isascii(255))
		return (0);
	return (1);
}

int	test_islower(void)
{
	if (ft_islower(-1) != islower(-1))
		return (0);
	if (ft_islower(0) != islower(0))
		return (0);
	if (ft_islower('a') != islower('a'))
		return (0);
	if (ft_islower('z') != islower('z'))
		return (0);
	if (ft_islower('A') != islower('A'))
		return (0);
	if (ft_islower('Z') != islower('Z'))
		return (0);
	if (ft_islower(123) != islower(123))
		return (0);
	if (ft_islower(95) != islower(95))
		return (0);
	return (1);
}

int	test_isupper(void)
{
	if (ft_isupper(-1) != isupper(-1))
		return (0);
	if (ft_isupper(0) != isupper(0))
		return (0);
	if (ft_isupper('a') != isupper('a'))
		return (0);
	if (ft_isupper('z') != isupper('z'))
		return (0);
	if (ft_isupper('A') != isupper('A'))
		return (0);
	if (ft_isupper('Z') != isupper('Z'))
		return (0);
	if (ft_isupper(123) != isupper(123))
		return (0);
	if (ft_isupper(95) != isupper(95))
		return (0);
	return (1);
}

int	test_isalpha(void)
{
	if (ft_isalpha(-1) != isalpha(-1))
		return (0);
	if (ft_isalpha(0) != isalpha(0))
		return (0);
	if (ft_isalpha('a') != isalpha('a'))
		return (0);
	if (ft_isalpha('z') != isalpha('z'))
		return (0);
	if (ft_isalpha('f') != isalpha('f'))
		return (0);
	if (ft_isalpha('Z') != isalpha('Z'))
		return (0);
	if (ft_isalpha(123) != isalpha(123))
		return (0);
	if (ft_isalpha(95) != isalpha(95))
		return (0);
	return (1);
}

int	test_isalnum(void)
{
	if (ft_isalnum(-1) != isalnum(-1))
		return (0);
	if (ft_isalnum(0) != isalnum(0))
		return (0);
	if (ft_isalnum('a') != isalnum('a'))
		return (0);
	if (ft_isalnum('z') != isalnum('z'))
		return (0);
	if (ft_isalnum('f') != isalnum('f'))
		return (0);
	if (ft_isalnum('Z') != isalnum('Z'))
		return (0);
	if (ft_isalnum(123) != isalnum(123))
		return (0);
	if (ft_isalnum(95) != isalnum(95))
		return (0);
	return (1);
}

int	test_tolower(void)
{
	if (ft_tolower(-1) != tolower(-1))
		return (0);
	if (ft_tolower(0) != tolower(0))
		return (0);
	if (ft_tolower('a') != tolower('a'))
		return (0);
	if (ft_tolower('z') != tolower('z'))
		return (0);
	if (ft_tolower('f') != tolower('f'))
		return (0);
	if (ft_tolower('Z') != tolower('Z'))
		return (0);
	if (ft_tolower(123) != tolower(123))
		return (0);
	if (ft_tolower(95) != tolower(95))
		return (0);
	return (1);
}

int	test_toupper(void)
{
	if (ft_toupper(-1) != toupper(-1))
		return (0);
	if (ft_toupper(0) != toupper(0))
		return (0);
	if (ft_toupper('a') != toupper('a'))
		return (0);
	if (ft_toupper('z') != toupper('z'))
		return (0);
	if (ft_toupper('f') != toupper('f'))
		return (0);
	if (ft_toupper('Z') != toupper('Z'))
		return (0);
	if (ft_toupper(123) != toupper(123))
		return (0);
	if (ft_toupper(95) != toupper(95))
		return (0);
	return (1);
}

int	test_strlen(void)
{
	if (ft_strlen("") != strlen(""))
		return (0);
	if (ft_strlen("Bonjour") != strlen("Bonjour"))
		return (0);
	if (ft_strlen("Bonjour les amis") != strlen("Bonjour les amis"))
		return (0);
	if (ft_strlen("42") != strlen("42"))
		return (0);
	if (ft_strlen("-42") != strlen("-42"))
		return (0);
	if (ft_strlen("101") != strlen("101"))
		return (0);
	if (ft_strlen("-101") != strlen("-101"))
		return (0);
	return (1);
}

int	test_memset_bzero(void)
{
	char *str;
	char *str1;

	str1 = malloc(sizeof(char) * 11);
	str1[5] = '1';
	str1[4] = '1';
	str1[6] = '1';
	ft_bzero(str1, 11);
	str = malloc(sizeof(char) * 11);
	str[5] = '1';
	str[4] = '1';
	str[6] = '1';
	ft_bzero(str, 11);

	if (strcmp(str1, str))
		return (0);

	ft_memset(str, 65, 5);
	ft_memset(str1, 65, 5);
	if (strcmp(str1, str))
		return (0);
	return (1);
}

int	test_memcpy(void)
{
	char str0[18];
	char str1[18];
	char str2[18];

	strcpy(str0, "Bonjour");

	bzero(str2, sizeof(str2));
	bzero(str1, sizeof(str1));
	ft_memcpy(str2, str1, 0);
	memcpy(str1, str1, 0);
	if (strcmp(str2, str1))
		return (0);
	return (1);
}

int	test_strcpy(void)
{
	char str0[] = "Hello Wolrd!";
	char str1[15];
	char str2[15];

	strcpy(str1, str0);
	ft_strcpy(str2, str0);
	if (strcmp(str2, str1))
		return (0);
	return (1);
}

int	test_strcat(void)
{
	char str0[] = "Hello";
	char str1[] = "World !";
	char str2[30];
	char str3[30];

	strcpy(str2, str0);
	strcpy(str3, str0);

	ft_strcat(str2, str1);
	strcat(str3, str1);
	if (strcmp(str3, str2))
		return (0);
	return (1);
}

int	test_strdup(void)
{
	char *str;
	char str1[] = "Bonjour les amis";
	char str2[] = "Au revoir les amis";

	str = ft_strdup(str1);
	if (strcmp(str, str1))
		return (0);
	free(str);
	str = ft_strdup(str2);
	if (strcmp(str, str2))
		return (0);
	if (!strcmp(str, str1))
		return (0);
	free(str);
	//str = ft_strdup(NULL);
	//str = strdup(NULL);
	return (1);
}

int	test_memalloc(int size)
{
	char *str = ft_memalloc(size);
	for (int i = 0;i<size;i++)
		if (str[i])
			return (0);
	return (1);
}

int	test_strnew(int size)
{
	char *str = ft_strnew(size);
	for (int i = 0;i<size + 1;i++)
		if (str[i])
			return (0);
	return (1);
}



int main(int ac, char **av)
{/*
	printf("is_digit: %s\n", test_isdigit() == 1 ? "ok" : "ko");
	printf("is_print: %s\n", test_isprint() == 1 ? "ok" : "ko");
	printf("is_ascii: %s\n", test_isascii() == 1 ? "ok" : "ko");
	printf("is_lower: %s\n", test_islower() == 1 ? "ok" : "ko");//BONUS
	printf("is_upper: %s\n", test_isupper() == 1 ? "ok" : "ko");//BONUS
	printf("is_alpha: %s\n", test_isalpha() == 1 ? "ok" : "ko");
	printf("is_alnum: %s\n", test_isalnum() == 1 ? "ok" : "ko");
	printf("tolower: %s\n", test_tolower() == 1 ? "ok" : "ko");
	printf("toupper: %s\n", test_toupper() == 1 ? "ok" : "ko");
	printf("strlen: %s\n", test_strlen() == 1 ? "ok" : "ko");
	printf("strcpy: %s\n", test_strcpy() == 1 ? "ok" : "ko");//BONUS
	printf("strcat: %s\n", test_strcat() == 1 ? "ok" : "ko");
	printf("strdup: %s\n", test_strdup() == 1 ? "ok" : "ko");
	printf("memset_bzero: %s\n", test_memset_bzero() == 1 ? "ok" : "ko");
	printf("memcpy: %s\n", test_memcpy() == 1 ? "ok" : "ko");
	printf("memalloc: %s\n", test_memalloc(2000) == 1 ? "ok" : "ko");//BONUS
	printf("strnew: %s\n", test_strnew(2000) == 1 ? "ok" : "ko");//BONUS
	ft_putstr_fd("putstr_fd ok\n", 1);//BONUS
	ft_putstr("putstr ok\n");//BONUS
	ft_fputs("fputs ok", 1);//BONUS
	ft_puts("puts ok");*/
//	ft_cat(0);
//	ft_cat(-42);
	ft_cat(open(av[0], O_RDONLY));
	return (0);
}
