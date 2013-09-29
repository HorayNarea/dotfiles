#!/bin/sh
DOTFILES=~/.dotfiles
GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc
SCREEN=~/.screenrc

mv $GIT $GIT.bak > /dev/null
ln -s $DOTFILES/gitconfig $GIT

mv $HTOP $HTOP.bak > /dev/null
ln -s $DOTFILES/htoprc $HTOP

mv $SCREEN $SCREEN.bak > /dev/null
ln -s $DOTFILES/screenrc $SCREEN

sudo mv /etc/zsh /etc/zsh.bak > /dev/null
sudo ln -s $DOTFILES/zsh /etc/zsh
