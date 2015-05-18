#!/bin/sh

git clone https://github.com/tarjoilija/zgen ~/.dotfiles/zgen

for f in gitconfig zshrc screenrc conkyrc config/htop/htoprc aria2/aria2.conf
do
	mv -vf ~/.${f} ~/.${f}.bak
	ln -vfs ~/.dotfiles/$(basename ${f}) ~/.${f}
done

mkdir ~/.zsh
