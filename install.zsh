#!/bin/zsh

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
echo "Installing emacs configuration..."
ln -s $DOTDIR/emacs $HOME/.emacs.d
echo "done..."

# Install ncmpcpp
echo "Installing ncmpcpp configuration..."
ln -s $DOTDIR/ncmpcpp/config ~/.ncmpcpp/config
echo "done..."
