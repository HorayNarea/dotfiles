#!/bin/sh
DOTFILES=~/.dotfiles
GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc
ARIA2=~/.aria2
ZSH=~/.zshrc
SCREEN=~/.screenrc
CONKY=~/.conkyrc
COLORDIFF=~/.colordiffrc

git submodule init
git submodule update

mv -f $GIT $GIT.bak > /dev/null
ln -s $DOTFILES/gitconfig $GIT

mv -f $HTOP $HTOP.bak > /dev/null
ln -s $DOTFILES/htoprc $HTOP

mv $ARIA2 $ARIA2.bak > /dev/null
ln -s $DOTFILES/aria2 $ARIA2

sudo mv -f /etc/zsh /etc/zsh.bak > /dev/null
sudo cp -r $DOTFILES/zsh /etc/zsh

mv -f $ZSH $ZSH.bak > /dev/null
ln -s $DOTFILES/zshrc ~/.zshrc
rm -f ~/.zcompdump*

mv -f $SCREEN $SCREEN.bak > /dev/null
ln -s $DOTFILES/screenrc $SCREEN

mv -f $CONKY $CONKY.bak > /dev/null
ln -s $DOTFILES/conkyrc $CONKY

mv -f $COLORDIFF $COLORDIFF.bak > /dev/null
ln -s $DOTFILES/colordiffrc $COLORDIFF
