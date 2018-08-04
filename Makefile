NAME	=	bin/day02

RM	=	rm -fr

CC	=	/usr/bin/gcc

CFLAGS	=	-I /usr/include/ -I includes/ -W -Wall -Werror -pedantic -std=gnu99

GFLAGS	=	-I /usr/include/ -I includes/-faggressive-loop-optimizations -g3 -ggdb -W -Wall -Werror -pedantic -std=gnu99

LS		=	/bin/ls

GREP	=	/usr/bin/grep

NORMINETTE = norminette -R CheckForbiddenSourceHeader

NORME = $(LS) * |  $(GREP) ~ | $(RM) && $(LS) * | $(GREP) a.out | $(RM) && $(NORMINETTE) | $(GREP) ft

SRCS	=	main.c \
		ex00/ft_print_alphabet.c \
		ex01/ft_print_reverse_alphabet.c \
		ex02/ft_print_numbers.c \
		ex03/ft_is_negative.c \
		ex04/ft_print_comb.c \
		ex05/ft_print_comb2.c \
		ex06/ft_putnbr.c \
		ex07/ft_print_combn.c \
		ex00/puts.c \

OBJS	=	$(SRCS:.c=.o)

ECHO	=	echo -e

all	:	$(NAME)

$(NAME)	:	$(OBJS)

		$(CC)  $(CFLAGS) $(OBJS) -o $(NAME)

clean	:

		$(RM) $(OBJS)

fclean	:	$(clean)
		$(RM) $(NAME)

re	:	fclean all

debug	:	$(OBJS)

		$(RM) $(NAME)
		$(CC)  $(GFLAGS) $(OBJS) -o $(NAME)
		$(RM) $(OBJS)

norme	:	$(NAME)
			$(NORME)
.PHONY	: all clean fclean re