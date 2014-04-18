# includes
. /etc/zsh_command_not_found
. ~/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# PATH-Stuff
PATH=/usr/pkg/bin:/usr/pkg/sbin:$PATH # Add pkg-src to PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# many auto-completion, such shell, wow
fpath=(~/.dotfiles/zsh-completions/src $fpath)
fpath=(~/.dotfiles/other-completions $fpath)
compdef mosh=ssh
compdef ping6=ping


# helpfull aliases
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'
alias TARDIS='sudo mount -t ufsd UUID=4200D53500D53121 /media/TARDIS -o users,nls=utf8,uid=1000,gid=1000'


### commented out for faster startup, maybe useful sometimes  ###
# reload completion on every startup
#autoload -Uz compinit
#compinit
