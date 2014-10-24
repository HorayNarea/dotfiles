# includes
source /etc/zsh_command_not_found
source ~/.venv/bin/activate

# prompt
autoload -Uz promptinit
promptinit
prompt grml-large

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

function weggucken {
	for item in $*; do
		vlc --rate 1.23 --scale 0.5 $item vlc://quit >/dev/null 2>/dev/null
		rm -i -r -v $item
	done
}

# compilerfoo
export CC=clang
export CXX=clang++
export CPP="clang -E"
export CXXCPP="clang++ -E"
export CFLAGS="-pipe -O3 -march=native -mtune=native"
export CXXFLAGS=$CFLAGS
export EDITOR=nano

# Syntax-Highlighting
source ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
