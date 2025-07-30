# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    install.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/29 22:31:28 by mmichele          #+#    #+#              #
#    Updated: 2025/07/30 11:03:40 by mmichele         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

rm -rf ~/bin
cp -r bin ~/bin

# Installing neovim config
rm -rf ~/.config/nvim
cp -r neovim ~/.config/nvim

# Installing bash config
rm -rf ~/.bashrc
cp bash/.bashrc ~/.bashrc
rm -rf ~/.zshrc
cp bash/.zshrc ~/.zshrc

# Installing fonts
mkdir -p ~/.fonts
rm -rf ~/.fonts/ocra.ttf ~/.fonts/ocra-nf.ttf
cp fonts/ocra.ttf ~/.fonts/ocra.ttf
cp fonts/ocra-nf.ttf ~/.fonts/ocra-nf.ttf

# Restart the terminal
gnome-terminal -- bash
PPID=$(ps -o ppid= -p $$)
kill -9 "$PPID"
