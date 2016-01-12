#!/bin/zsh

# Old dotfiles
OLDDOTDIR=~/old_dotfiles
mkdir $OLDDOTDIR

# Directory of dotfiles
DOTDIR=~/dotfiles

# Install zsh
echo "Installing zsh configuration..."
export ZDOTDIR=$DOTDIR/zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done

ln -s "${ZDOTDIR:-$HOME}"/runcoms/zshenv "${HOME}"/.zshenv
echo "done..."

# Instal emacs
echo "Backing up old emacs configuration..."
mv ~/.emacs.d $OLDDOTDIR/emacs
echo "Installing emacs configuration..."
ln -s $DOTDIR/emacs ~/.emacs.d

# Install ncmpcpp
echo "Backing up old ncmpcpp configuration..."
mv ~/.ncmpcpp/config $OLDDOTDIR/ncmpcpp
echo "Installing ncmpcpp configuration..."
ln -s $DOTDIR/ncmpcpp/config ~/.ncmpcpp/config

# Install vim
echo "Backing up old ncmpcpp configuration..."
mv ~/.vim $OLDDOTDIR/vim
mv ~/.vimrc $OLDDOTDIR/vim/vimrc
echo "Installing vim configuration..."
ln -s $DOTDIR/vim ~/.vim
ln -s $DOTDIR/vim/vimrc ~/.vimrc
echo "done..."

# Install i3 configuration
echo "Backing up old i3 configuration..."
mv ~/.i3 $OLDDOTDIR/i3
echo "Installing i3 configuration..."
ln -s $DOTDIR/i3 ~/.i3

# Install termite configuration
echo "Backing up old termite configuration..."
mv ~/.config/termite $OLDDOTDIR/termite
echo "Installing termite configuration..."
ln -s $DOTDIR/termite ~/.config/termite
