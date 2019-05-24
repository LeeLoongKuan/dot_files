#!/bin/zsh

# Old dotfiles
OLDDOTDIR=~/old_dotfiles
mkdir $OLDDOTDIR

# Directory of dotfiles
DOTDIR=~/dot_files

# Install zsh
echo "Installing zsh configuration..."
export ZDOTDIR=$DOTDIR/zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done

ln -s "${ZDOTDIR:-$HOME}"/runcoms/zshenv "${HOME}"/.zshenv

mv ~/.zsh $OLDDOTDIR/zsh
ln -s $DOTDIR/zsh ~/.zsh
echo "done..."

# Install vim
echo "Backing up old ncmpcpp configuration..."
mv ~/.vim $OLDDOTDIR/vim
mv ~/.vimrc $OLDDOTDIR/vim/vimrc
echo "Installing vim configuration..."
ln -s $DOTDIR/vim ~/.vim
ln -s $DOTDIR/vim/vimrc ~/.vimrc
echo "done..."

# Install Xresources
echo "Backing up old Xresources configuration..."
mv ~/.Xresources $OLDDOTDIR/Xresources
mv ~/.Xresources.d $OLDDOTDIR/Xresources.d
echo "Installing termite configuration..."
ln -s $DOTDIR/Xresources.d/Xresources ~/.Xresources
ln -s $DOTDIR/Xresources.d ~/.Xresources.d

