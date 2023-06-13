NAME	=	libft.a

SRC		=	ft_atof.c			ft_atoi.c			ft_bzero.c			ft_calloc.c			ft_free_matrix.c	\
			ft_isalnum.c		ft_isalpha.c		ft_isascii.c		ft_isdigit.c		ft_isprint.c		\
			ft_isspace.c		ft_itoa.c			ft_lstadd_back.c	ft_lstadd_front.c	ft_lstclear.c		\
			ft_lstdelone.c		ft_lstiter.c		ft_lstlast.c		ft_lstmap.c			ft_lstnew.c			\
			ft_lstsize.c		ft_matrix_len.c		ft_memchr.c			ft_memcmp.c			ft_memcpy.c			\
			ft_memmove.c		ft_memset.c			ft_putchar_fd.c		ft_putendl_fd.c		ft_putnbr_fd.c		\
			ft_putstr_fd.c		ft_read_file.c		ft_split_lines.c	ft_split.c			ft_strchr.c			\
			ft_strdup.c			ft_striteri.c		ft_strjoin.c		ft_strlcat.c		ft_strlcpy.c		\
			ft_strlen.c			ft_strmapi.c		ft_strncmp.c		ft_strnstr.c		ft_strrchr.c		\
			ft_strtrim.c		ft_substr.c			ft_tolower.c		ft_toupper.c							\


OBJ		=	$(SRC:.c=.o)

INCLUDE	=	-I.

CC		=	gcc

CFLAGS	=	-Wall -Werror -Wextra

RM		=	rm -f

all: $(NAME)

bonus: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.c ./libft.h
	$(CC) $(INCLUDE) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
