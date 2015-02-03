# includes
source /etc/zsh_command_not_found
source ~/.venv/bin/activate

# prompt
autoload -Uz promptinit
promptinit
prompt grml-large

# PATH-Stuff
export PATH="$HOME/.linuxbrew/bin:$PATH" # add homebrew for linux
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# many auto-completion, such shell, wow
fpath=(~/.dotfiles/zsh-completions/src $fpath)
fpath=(~/.dotfiles/other-completions $fpath)
fpath=(~/.linuxbrew/Library/Contributions/brew_zsh_completion.zsh $fpath)
compdef mosh=ssh
compdef ping6=ping
autoload -U compinit
compinit

# For sudo-ing aliases
# https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

# helpfull aliases
alias diff='colordiff'
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'

function weggucken {
	for item in $*; do
		vlc --rate 1.25 --scale 0.5 $item vlc://quit >/dev/null 2>/dev/null
		rm -i -r -v $item
	done
}

# environment
export EDITOR=nano
export GOPATH=/opt/Dinge/Code/go

# Syntax-Highlighting
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
