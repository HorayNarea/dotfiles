#!/bin/sh

git clone https://github.com/tarjoilija/zgen ~/.dotfiles/zgen

# global
for source in files/global/*; do
	for target in $(echo ${source}|sed "s,files/global/,,"|tr "_" "/"); do
		mv -vf ~/.${target} ~/.${target}.bak
		ln -vfs ~/.dotfiles/${source} ~/.${target}
	done
done

# host-specific
HOST=$(hostname -s)
if [ -d files/host-specific/${HOST} ]; then
	for source in files/host-specific/${HOST}/*; do
		for target in $(echo ${source}|sed "s,files/host-specific/${HOST}/,,"|tr "_" "/"); do
			mv -vf ~/.${target} ~/.${target}.bak
			ln -vfs ~/.dotfiles/${source} ~/.${target}
		done
	done
fi

mkdir ~/.zsh
