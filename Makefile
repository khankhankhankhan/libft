NAME = libft.a
FUNCTIONS = ft_memset	ft_bzero ft_memcpy ft_memccpy ft_memmove ft_memchr\
 						ft_memcmp ft_strlen ft_strdup ft_strcpy ft_strncpy ft_strcat\
						ft_strncat ft_strlcat ft_strchr ft_strrchr ft_strstr\
						ft_strnstr ft_strcmp ft_strncmp ft_atoi ft_isalpha ft_isdigit\
						ft_isalnum ft_isascii ft_isprint ft_toupper ft_tolower ft_memalloc\
						ft_memdel ft_strnew ft_strdel ft_strclr ft_striter ft_striteri\
						ft_strmap ft_strmapi ft_strequ ft_strnequ ft_strsub ft_strjoin\
						ft_strtrim ft_strgetworld ft_strsplit ft_getnsize ft_itoa ft_putchar\
						ft_putstr ft_putendl ft_putnbr ft_putchar_fd ft_putstr_fd\
						ft_putnbr_fd ft_putendl_fd ft_lstnew ft_lstdelone ft_lstdel\
						ft_lstadd ft_lstiter ft_lstmap
CC = gcc
CFLAGS = -Wall -Wextra -Werror
BINS = $(patsubst %,%.o,$(FUNCTIONS))

all: $(NAME)

$(BINS):
	$(CC) $(CFLAGS) -c $(patsubst %.o,%.c,$@)

$(NAME): $(BINS)
	ar rc $(NAME) $(BINS)
	ranlib $(NAME)

clean:
	rm -f $(BINS)

fclean: clean
	rm -f $(NAME)

re: fclean all
