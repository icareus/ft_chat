# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: root <root@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/30 05:29:40 by abarbaro          #+#    #+#              #
#    Updated: 2014/12/27 12:24:56 by root             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -g3 -Wall -Werror
NAME = ../client
LIBDIR = ../libft/
LIB = $(LIBDIR)libft.a
SRCDIR = ./src/
SRCFIL = $(shell ls $(SRCDIR) | grep "\.c")
SRC = $(addprefix $(SRCDIR),$(SRCFIL))
ODIR = ./OBJECTS/
IDIR = ./includes/
SRCO = $(SRCFIL:.c=.o)
BLU = tput setaf 4
GRN = tput setaf 2
WHT = tput setaf 7
NOCOLOR = tput sgr 0

all: $(LIB) $(NAME)

$(NAME): objects
	@$(BLU)
	@echo "Making $(NAME)..."
	@$(CC) $(addprefix $(ODIR),$(SRCO)) -o $(NAME) -L$(LIBDIR) -lft
	@$(WHT)
	@echo "$(NAME) done."
	@$(NOCOLOR)

objects:
	@$(BLU)
	@echo "Making objects..."
	@$(CC) $(CFLAGS) -c $(SRC) -I ./includes -I $(LIBDIR)includes -I $(IDIR)
	@mkdir -p $(ODIR)
	@mv $(SRCO) $(ODIR)
	@$(WHT)
	@echo "objects done."
	@$(NOCOLOR)

$(LIB):
	@$(BLU)
	@echo "Building dependencies..."
	@make -C $(LIBDIR)
	@$(WHT)
	@echo "Dependencies done."
	@$(NOCOLOR)

re: fclean all
	@$(BLU)
	@echo "Project reset and rebuilt."
	@$(NOCOLOR)

clean:
	@$(BLU)
	@echo "Cleaning objects..."
	rm -rf $(ODIR)
	@$(WHT)
	@echo "client cleaning done."
	@$(NOCOLOR)

fclean: clean
	@$(BLU)
	@echo "Deleting output..."
	rm -f $(NAME)
	@$(WHT)
	@echo "client deletion done."
	@$(NOCOLOR)

