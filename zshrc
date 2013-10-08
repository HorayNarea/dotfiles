PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fpath=(~/.dotfiles/zsh-completions/src $fpath)
autoload -Uz compinit
compinit
