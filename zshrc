##### includes
source ~/.venv/bin/activate
source ~/.dotfiles/zgen/zgen.zsh

if ! zgen saved; then
	# Load the oh-my-zsh's library.
	zgen oh-my-zsh

	# load many plugins
	zgen load adb
	zgen load brew
	zgen load colored-man
	zgen load command-not-found
	zgen load gem
	zgen load git
	zgen load git-extras
	zgen load gitignore
	zgen load golang
	zgen load httpie
	zgen load mosh
	zgen load npm
	zgen load pip
	zgen load python
	zgen load robertzk/send.zsh
	zgen load screen
	zgen load sublime
	zgen load sudo
	zgen load Tarrasch/zsh-mcd
	zgen load zsh_reload
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
export GOPATH=/opt/Dinge/Code/go
export EDITOR=nano


##### customization
source ~/.dotfiles/aliases.zsh
source ~/.dotfiles/functions.zsh
source ~/.dotfiles/config.zsh
if [[ -f ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi
