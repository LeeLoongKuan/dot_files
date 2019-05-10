#!/bin/zsh

rm -rf ~/.emacs.d/private
ln -s ~/dot_files/emacs/private ~/.emacs.d/private
rm -f ~/.spacemacs
ln -s ~/dotfiles/emacs/spacemacs ~/.spacemacs
