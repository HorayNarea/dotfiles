#!/bin/sh

GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc

if [ -f $GIT ]; then
	mv $GIT $GIT.bak
fi
ln -s ~/dotfiles/gitconfig $GIT

if [ -f $HTOP ]; then
	mv $HTOP $HTOP.bak
fi
ln -s ~/dotfiles/htoprc $HTOP

if [ -d /etc/zsh ]; then
	sudo mv /etc/zsh /etc/zsh.bak
fi
sudo ln -s ~/dotfiles/zsh /etc/zsh
