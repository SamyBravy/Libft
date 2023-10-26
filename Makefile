# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdell-er <sdell-er@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/13 12:03:28 by sdell-er          #+#    #+#              #
#    Updated: 2023/10/18 16:15:16 by sdell-er         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror

SRCS = ft_isascii.c ft_memcpy.c ft_putstr_fd.c ft_strlcat.c ft_strrchr.c \
	ft_atoi.c ft_isdigit.c ft_memmove.c ft_split.c ft_strlcpy.c \
	ft_strtrim.c ft_bzero.c ft_isprint.c ft_memset.c ft_strchr.c \
	ft_strlen.c ft_substr.c ft_calloc.c ft_itoa.c ft_putchar_fd.c \
	ft_strdup.c ft_strmapi.c ft_tolower.c ft_isalnum.c ft_memchr.c \
	ft_putendl_fd.c ft_striteri.c ft_strncmp.c ft_toupper.c ft_isalpha.c \
	ft_memcmp.c ft_putnbr_fd.c ft_strjoin.c ft_strnstr.c

SRCS_BONUS = ft_lstdelone.c ft_lstclear.c ft_lstsize.c ft_lstlast.c ft_lstnew.c \
			ft_lstiter.c ft_lstadd_back.c ft_lstadd_front.c ft_lstmap.c $(SRCS)

NAME = libft.a

OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c libft.h
	$(CC) $(CC_FLAGS) -c -o $@ $<

bonus: $(OBJS_BONUS)
	ar rcs $(NAME) $(OBJS_BONUS)
	ranlib $(NAME)

clean:
	rm -f $(OBJS) $(OBJS_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all
