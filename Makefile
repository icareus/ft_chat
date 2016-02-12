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

# building
CC = cc
CFLAGS = -g3 -Wall -Werror
# project files arch
SRVNAME = serveur
SRVDIR = ./srv
CLINAME = client
CLIDIR = ./cli
LIBDIR = ./libft/
LIB = $(LIBDIR)libft.a
# coloring
BLU = tput setaf 4
GRN = tput setaf 2
WHT = tput setaf 7
NOCOLOR = tput sgr 0

all: $(LIB) $(SRVNAME) $(CLINAME)

$(SRVNAME): $(LIB)
	@$(GRN)
	@echo "Building server..."
	@$(BLU)
	@make -C $(SRVDIR)
	@$(WHT)
	@echo "server done."
	@$(NOCOLOR)

$(CLINAME): $(LIB)
	@$(GRN)
	@echo "Building client..."
	@$(BLU)
	@make -C $(CLIDIR)
	@$(WHT)
	@echo "client done."
	@$(NOCOLOR)

$(LIB):
	@$(GRN)
	@echo "Building dependencies..."
	@$(BLU)
	@make -C $(LIBDIR)
	@$(WHT)
	@echo "Dependencies done."
	@$(NOCOLOR)

re: fclean all
	@$(GRN)
	@echo "Project reset and rebuilt."
	@$(NOCOLOR)

clean:
	@$(GRN)
	@echo "Cleaning..."
	@$(NOCOLOR)
	@make -C $(LIBDIR) clean
	@make -C $(SRVDIR) clean
	@make -C $(CLIDIR) clean
	@$(NOCOLOR)

fclean:
	@$(BLU)
	@make -C $(LIBDIR) fclean
	@make -C $(SRVDIR) fclean
	@make -C $(CLIDIR) fclean
	@$(NOCOLOR)
	@$(WHT)
	@echo "$(NAME) - Deletion done."
	@$(NOCOLOR)

