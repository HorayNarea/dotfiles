#!/bin/sh
DOTFILES=~/.dotfiles
GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc
SCREEN=~/.screenrc
ARIA2=~/.aria2

mv $GIT $GIT.bak > /dev/null
ln -s $DOTFILES/gitconfig $GIT

mv $HTOP $HTOP.bak > /dev/null
ln -s $DOTFILES/htoprc $HTOP

mv $SCREEN $SCREEN.bak > /dev/null
ln -s $DOTFILES/screenrc $SCREEN

mv $ARIA2 $ARIA2.bak > /dev/null
ln -s $DOTFILES/aria2 $ARIA2

sudo mv /etc/zsh /etc/zsh.bak > /dev/null
sudo ln -s $DOTFILES/zsh /etc/zsh
