export EDITOR=nano

source ~/.dotfiles/zgen/zgen.zsh
if ! zgen saved; then
	source ~/.dotfiles/includes/zgen
	if [[ -f ~/.dotfiles/includes/${HOST}/zgen ]]; then
		source ~/.dotfiles/includes/${HOST}/zgen
	fi
	zgen save
fi

source ~/.dotfiles/includes/config
source ~/.dotfiles/includes/aliases
source ~/.dotfiles/includes/functions

if [[ -f ~/.dotfiles/includes/${HOST}/zshrc ]]; then
	source ~/.dotfiles/includes/${HOST}/zshrc
fi
