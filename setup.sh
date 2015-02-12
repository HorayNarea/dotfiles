#!/bin/sh
git submodule init
git submodule update

for f in gitconfig zshrc screenrc conkyrc config/htop/htoprc aria2/aria2.conf
do
	mv -vf ~/.${f} ~/.${f}.bak
	ln -vfs ~/.dotfiles/$(basename ${f}) ~/.${f}
done
