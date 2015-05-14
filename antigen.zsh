# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# load many bundles
antigen bundles << EOBUNDLES
	adb
	brew
	colored-man
	command-not-found
	gem
	git
	git-extras
	gitignore
	golang
	httpie
	mosh
	npm
	pip
	python
	robertzk/send.zsh
	screen
	sublime
	sudo
	Tarrasch/zsh-mcd
	zsh_reload
	zsh-users/zsh-completions src
	zsh-users/zsh-syntax-highlighting
	zsh-users/zsh-history-substring-search
EOBUNDLES

# theming
antigen theme tjkirch


antigen apply
