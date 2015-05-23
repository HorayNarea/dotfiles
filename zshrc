##### includes
source ~/.venv/bin/activate
source ~/.dotfiles/zgen/zgen.zsh

if ! zgen saved; then
	# Load the oh-my-zsh's library.
	zgen oh-my-zsh

	# load many plugins
	zgen oh-my-zsh plugins/adb
	zgen oh-my-zsh plugins/brew
	zgen oh-my-zsh plugins/colorize
	zgen oh-my-zsh plugins/colored-man
	zgen oh-my-zsh plugins/command-not-found
	zgen oh-my-zsh plugins/golang
	zgen oh-my-zsh plugins/httpie
	zgen oh-my-zsh plugins/mosh
	zgen oh-my-zsh plugins/npm
	zgen oh-my-zsh plugins/pip
	zgen oh-my-zsh plugins/screen
	zgen oh-my-zsh plugins/sublime
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/zsh_reload
	zgen load robertzk/send.zsh
	zgen load srijanshetty/zsh-pandoc-completion
	zgen load t413/zsh-background-notify
	zgen load Tarrasch/zsh-mcd
	zgen load zsh-users/zsh-completions src
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-history-substring-search

	# theming
	zgen oh-my-zsh themes/tjkirch

	zgen save
fi

##### environment
export PATH="$HOME/.linuxbrew/bin:$PATH"
export PATH="$HOME/.linuxbrew/sbin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
export EDITOR=nano


##### customization
source ~/.dotfiles/includes/aliases
source ~/.dotfiles/includes/functions
source ~/.dotfiles/includes/config
if [[ -f ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi
