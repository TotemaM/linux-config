# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .bashrc                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/29 22:33:20 by mmichele          #+#    #+#              #
#    Updated: 2025/08/03 11:16:43 by mmichele         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PS1="\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ "
# 42 Header variables
USER="mmichele"
MAIL="mmichele@student.s19.be"
# Executing tmux beforenvim
nvim() {
	if [ -z "$TMUX" ]; then
		tmux new-session /usr/bin/nvim "$@"
	else
		command nvim "$@"
	fi
}
# Activate autocompletion if not allready active.
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# Better command history control
HISTCONTROL=ignoreboth
# Set colors for ls
alias ls="ls --color=auto"
