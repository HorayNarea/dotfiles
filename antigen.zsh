# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# load many bundles
antigen bundles << EOBUNDLES
	brew
	colored-man
	command-not-found
	debian
	gem
	git
	pip
	python
	screen

	zsh-users/zsh-completions
	zsh-users/zsh-syntax-highlighting
	zsh-users/zsh-history-substring-search
EOBUNDLES

# theming
antigen theme robbyrussell


antigen apply
