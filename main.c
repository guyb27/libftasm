
#include <stdio.h>
#include <ctype.h>

void	ft_puts(const char *s);
int	ft_isdigit(int c);
int	ft_isprint(int c);
int	ft_isascii(int c);
int	ft_islower(int c);
int	ft_isupper(int c);
int	ft_isalpha(int c);


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
//	printf("0: %d, %d\n", ft_isascii(128), isascii(128));
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
//	printf("0: %d, %d\n", ft_islower('z'), islower('z'));
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
//	printf("0: %d, %d\n", ft_isupper('Z'), isupper('Z'));
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
	printf("TEST_IS_ALPHA\n");
	printf("0: %d, %d\n", ft_isalpha('z'), isalpha('z'));
/*
	if (ft_isalpha(-1) != isalpha(-1))
		return (0);
	printf("1: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha(0) != isalpha(0))
		return (0);
	printf("2: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha('a') != isalpha('a'))
		return (0);
	printf("3: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha('z') != isalpha('z'))
		return (0);
	printf("4: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha(1) != isalpha('f'))
		return (0);
	printf("5: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha('Z') != isalpha('Z'))
		return (0);
	printf("6: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha(123) != isalpha(123))
		return (0);
	printf("7: %d, %d\n", ft_isalpha('z'), isalpha('z'));
	if (ft_isalpha(95) != isalpha(95))
		return (0);
	printf("8: %d, %d\n", ft_isalpha('z'), isalpha('z'));*/
	return (1);
}

int main(int ac, char **av)
{
	ft_puts("KO");//MANQUE FT_STRLEN
	printf("is_digit: %s\n", test_isdigit() == 1 ? "ok" : "ko");
	printf("is_print: %s\n", test_isprint() == 1 ? "ok" : "ko");
	printf("is_ascii: %s\n", test_isascii() == 1 ? "ok" : "ko");
	printf("is_lower: %s\n", test_islower() == 1 ? "ok" : "ko");//BONUS
	printf("is_upper: %s\n", test_isupper() == 1 ? "ok" : "ko");//BONUS
	printf("is_alpha: %s\n", test_isalpha() == 1 ? "ok" : "ko");
	return (0);
}
