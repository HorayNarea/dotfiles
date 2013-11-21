#!/bin/sh
DOTFILES=~/.dotfiles
GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc
ARIA2=~/.aria2

git submodule init
git submodule update

mv -f $GIT $GIT.bak > /dev/null
ln -s $DOTFILES/gitconfig $GIT

mv -f $HTOP $HTOP.bak > /dev/null
ln -s $DOTFILES/htoprc $HTOP

mv $ARIA2 $ARIA2.bak > /dev/null
ln -s $DOTFILES/aria2 $ARIA2

sudo mv -f /etc/zsh /etc/zsh.bak > /dev/null
sudo ln -s $DOTFILES/zsh /etc/zsh

mv -f ~/.zshrc ~/.zshrc.bak > /dev/null
ln -s $DOTFILES/zshrc ~/.zshrc
rm -f ~/.zcompdump
