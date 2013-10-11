. /etc/zsh_command_not_found
alias sublime='BROWSER=/usr/bin/x-www-browser sublime_text'
alias sublime_text='BROWSER=/usr/bin/x-www-browser sublime_text'

fpath=(~/.dotfiles/zsh-completions/src $fpath)
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

autoload -Uz compinit
compinit
