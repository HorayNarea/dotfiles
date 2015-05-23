export EDITOR=nano

source ~/.dotfiles/zgen/zgen.zsh
if ! zgen saved; then
	source ~/.dotfiles/includes/zgen
	if [[ -f ~/.zgen.${HOST} ]]; then
		source ~/.zgen.${HOST}
	fi
	zgen save
fi

source ~/.dotfiles/includes/config
source ~/.dotfiles/includes/aliases
source ~/.dotfiles/includes/functions

if [[ -f ~/.zshrc.${HOST} ]]; then
	source ~/.zshrc.${HOST}
fi
