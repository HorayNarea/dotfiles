#!/bin/sh
DOTFILES=~/.dotfiles
GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc

mv $GIT $GIT.bak > /dev/null
ln -s $DOTFILES/gitconfig $GIT

mv $HTOP $HTOP.bak >/dev/null
ln -s $DOTFILES/htoprc $HTOP

sudo mv /etc/zsh /etc/zsh.bak >/dev/null
sudo ln -s $DOTFILES/zsh /etc/zsh
