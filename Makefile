NAME := so_long

CC := gcc

CFLAGS := -Wall -Wextra -Werror -Iheaders/

SOURCE := game_logic/*.c
GETNEXTLINE := get_next_line/*.c
FTPRINTF := ft_printf/*.c
LIBRARY := -Lmlx -lmlx -framework OpenGL -framework AppKit
MINILIBX := mlx/

all:
	make -C $(MINILIBX)
	$(CC) $(CFLAGS) $(SOURCE) $(GETNEXTLINE) $(FTPRINTF) $(LIBRARY) -o $(NAME)

clean:

fclean: clean
		make clean -C $(MINILIBX)
		rm -rf $(NAME)

re: fclean all