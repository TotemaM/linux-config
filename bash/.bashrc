PS1="\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ "
# 42 Header variables
USER="mmichele"
MAIL="mmichele@student.s19.be"
# When executing nvim command it runs tmux if not allready in tmux
nvim() {
	if [ -z "$TMUX" ]; then
		tmux new-session /usr/local/bin/nvim "$@"
	else
		command nvim "$@"
	fi
}
# Activate autocompletion if not allready active.
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
