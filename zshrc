. /etc/zsh_command_not_found
alias sublime='BROWSER=/usr/bin/x-www-browser sublime_text'
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'

fpath=(~/.dotfiles/zsh-completions/src $fpath)
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

autoload -Uz compinit
compinit
