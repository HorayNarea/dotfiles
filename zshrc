export EDITOR=nano

source ~/.dotfiles/zgen/zgen.zsh
if ! zgen saved; then
	source ~/.dotfiles/includes/zgen
	if [[ -f ~/.dotfiles/includes/zgen.${HOST} ]]; then
		source ~/.dotfiles/includes/zgen.${HOST}
	fi
	zgen save
fi

source ~/.dotfiles/includes/config
source ~/.dotfiles/includes/aliases
source ~/.dotfiles/includes/functions

if [[ -f ~/.dotfiles/includes/zshrc.${HOST} ]]; then
	source ~/.dotfiles/includes/zshrc.${HOST}
fi
