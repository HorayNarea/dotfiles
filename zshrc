. /etc/zsh_command_not_found

# helpfull aliases
alias sublime='BROWSER=/usr/bin/x-www-browser sublime_text'
alias serve='python -m SimpleHTTPServer 8888'
alias rm='rm -I'

# many auto-completion, such shell, wow
fpath=(~/.dotfiles/zsh-completions/src $fpath)

PATH=$PATH:/usr/pkg/bin:/usr/pkg/sbin # Add pkg-src to PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# reload completion on every startup
autoload -Uz compinit
compinit
