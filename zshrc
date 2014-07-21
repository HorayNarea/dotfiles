# includes
source /etc/zsh_command_not_found
source ~/.venv/bin/activate

# PATH-Stuff
PATH=$PATH:/usr/pkg/bin:/usr/pkg/sbin # Add pkg-src to PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# many auto-completion, such shell, wow
fpath=(~/.dotfiles/zsh-completions/src $fpath)
fpath=(~/.dotfiles/other-completions $fpath)
compdef mosh=ssh
compdef ping6=ping

# helpfull aliases
alias diff='colordiff'
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'
alias TARDIS='sudo mkdir -p /media/TARDIS && sudo mount -t ufsd UUID=4200D53500D53121 /media/TARDIS -o users,nls=utf8,uid=1000,gid=1000'
alias uTARDIS='sudo umount /media/TARDIS && sudo rmdir /media/TARDIS'

function weggucken {
	for item in $*; do
		vlc --rate 1.23 $item vlc://quit >/dev/null 2>/dev/null
		rm -v $item
	done
}

### commented out for faster startup, maybe useful sometimes  ###
# reload completion on every startup
#autoload -Uz compinit
#compinit

# Syntax-Highlighting
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
