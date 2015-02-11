#!/bin/sh
DOTFILES=~/.dotfiles
GIT=~/.gitconfig
HTOP=~/.config/htop/htoprc
ARIA2=~/.aria2/aria2.conf
ZSH=~/.zshrc
SCREEN=~/.screenrc
CONKY=~/.conkyrc
COLORDIFF=~/.colordiffrc

git submodule init
git submodule update

mv -f $GIT $GIT.bak > /dev/null
ln -fs $DOTFILES/gitconfig $GIT

mv -f $HTOP $HTOP.bak > /dev/null
ln -fs $DOTFILES/htoprc $HTOP

mv $ARIA2 $ARIA2.bak > /dev/null
ln -fs $DOTFILES/aria2.conf $ARIA2

sudo mv -f /etc/zsh /etc/zsh.bak > /dev/null
sudo cp -r $DOTFILES/zsh /etc/zsh

mv -f $ZSH $ZSH.bak > /dev/null
ln -fs $DOTFILES/zshrc $ZSH
rm -f ~/.zcompdump*

mv -f $SCREEN $SCREEN.bak > /dev/null
ln -fs $DOTFILES/screenrc $SCREEN

mv -f $CONKY $CONKY.bak > /dev/null
ln -fs $DOTFILES/conkyrc $CONKY

mv -f $COLORDIFF $COLORDIFF.bak > /dev/null
ln -fs $DOTFILES/colordiffrc $COLORDIFF
