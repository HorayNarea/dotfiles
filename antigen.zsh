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
	mosh
	npm
	pip
	python
	screen
	sublime
	sudo
	zsh_reload
	zsh-users/zsh-completions
	zsh-users/zsh-syntax-highlighting
	zsh-users/zsh-history-substring-search
EOBUNDLES

# theming
antigen theme tjkirch


antigen apply
