NAME= libft.a

AR= ar -rcs

CC= cc
CFLAGS= -Wall -Werror -Wextra

SRC=		ft_bzero.c \
			ft_strchr.c \
			ft_memcmp.c \
			ft_memmove.c \
			ft_isdigit.c \
			ft_isalpha.c \
			ft_putnbr_fd.c \
			ft_itoa.c \
			ft_atoi.c \
			ft_isascii.c \
			ft_isalnum.c \
			ft_striteri.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_strlen.c \
			ft_strlcpy.c \
			ft_isprint.c \
			ft_strrchr.c \
			ft_strnstr.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strdup.c \
			ft_calloc.c \
			ft_strmapi.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_memcpy.c \
			ft_strtrim.c \
			ft_putendl_fd.c \
			ft_strlcat.c \
			ft_memset.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_split.c \
            
SRC_BONUS=  ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstmap_bonus.c \

OBJ= $(SRC:.c=.o) 
OBJ_BONUS= $(SRC_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) libft.h
	$(AR) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ $< -c

clean:
	rm -f $(OBJ) $(OBJ_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all

bonus:
	@make SRC="$(SRC) $(SRC_BONUS)"

.DEFAULT_GOAL: all

.PHONY: all clean fclean re