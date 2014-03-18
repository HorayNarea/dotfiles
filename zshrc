# includes
. /etc/zsh_command_not_found
. ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# PATH-Stuff
PATH=$PATH:/usr/pkg/bin:/usr/pkg/sbin # Add pkg-src to PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# many auto-completion, such shell, wow
fpath=(~/.dotfiles/zsh-completions/src $fpath)
fpath=(~/.dotfiles/other-completions $fpath)
compdef mosh=ssh

# reload completion on every startup
#autoload -Uz compinit
#compinit


# helpfull aliases
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'
