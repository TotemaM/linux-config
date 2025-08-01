# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/29 22:33:26 by mmichele          #+#    #+#              #
#    Updated: 2025/07/30 11:07:35 by mmichele         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PS1="%F{green}%n@%m%k%f:%F{blue}%d%f$ "
# 42 Header variables
USER="mmichele"
MAIL="mmichele@student.s19.be"
# Running tmux before nvim
nvim() {
	if [ -z "$TMUX" ]; then
		tmux new-session /usr/bin/nvim "$@"
	else
		command nvim "$@"
	fi
}
