#!/bin/sh

git clone https://github.com/tarjoilija/zgen ~/.dotfiles/zgen

for source in gitconfig zshrc screenrc conkyrc config_htop_htoprc aria2_aria2.conf ssh_config sift.conf; do
	for target in $(echo ${source}|tr "_" "/"); do
		mv -vf ~/.${target} ~/.${target}.bak
		ln -vfs ~/.dotfiles/${source} ~/.${target}
	done
done

mkdir ~/.zsh
