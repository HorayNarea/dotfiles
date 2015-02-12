##### includes
source ~/.venv/bin/activate
source ~/.dotfiles/antigen/antigen.zsh


##### antigen
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# load many bundles
antigen bundles << EOBUNDLES
	brew
	colored-man
	command-not-found
	debian
	gem
	git
	pip
	screen

	zsh-users/zsh-completions
	zsh-users/zsh-syntax-highlighting
	zsh-users/zsh-history-substring-search
EOBUNDLES

# theming
#antigen theme

antigen apply


##### environment
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.linuxbrew/sbin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export GOPATH=/opt/Dinge/Code/go
export EDITOR=nano


##### zsh config
# default bindings for zsh-users/zsh-history-substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# For historical purposes
HISTFILE=~/.zsh_history
HISTSIZE=SAVEHIST=10000
setopt histignorealldups
setopt sharehistory
setopt extendedhistory

setopt auto_cd
setopt prompt_subst

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)


##### aliases
# For sudo-ing aliases
# https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

PyVer=$(python -c "import sys;print(sys.version_info.major)")
if [[ $PyVer == 2 ]]; then
	alias serve='python -m SimpleHTTPServer 8080'
elif [[ $PyVer == 3 ]]; then
	alias serve='python -m http.server 8080'
fi
unset PyVer

alias rm='rm -I'
alias dig='drill'
alias ls='\ls -b -FC --color=yes'
alias l='ls -l'
alias la='l -A'
alias less='less -FRX'
alias tree='tree -CF --dirsfirst'


##### functions
# Use Git's colored diff
function diff() {
	git diff --no-index "$@";
}

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
