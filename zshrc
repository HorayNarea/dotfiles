# includes
source ~/.venv/bin/activate

# prompt
autoload -Uz promptinit
promptinit
prompt grml-large

# PATH-Stuff
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.linuxbrew/sbin:$PATH"
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
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'
alias dig='drill'
alias ls='ls -b -FC --color=yes'
alias l='ls -l'
alias la='l -A'
alias less='less -FRX'
alias tree='tree -CF --dirsfirst'

# Use Git's colored diff when available
hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index "$@";
	}
fi;

# Syntax-highlight & pretty-print JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
function json() {
	if [ -t 0 ]; then # argument
		python -mjson.tool <<< "$*" | pygmentize -l javascript;
	else # pipe
		python -mjson.tool | pygmentize -l javascript;
	fi;
}

function tre() {
	tree -a -I '.git|node_modules|bower_components' "$@" | less;
}

function weggucken {
	for item in $*; do
		vlc --rate 1.25 --scale 0.5 $item vlc://quit >/dev/null 2>/dev/null
		rm -i -v $item
	done
}

# environment
export EDITOR=nano
export GOPATH=/opt/Dinge/Code/go

# Syntax-Highlighting
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
