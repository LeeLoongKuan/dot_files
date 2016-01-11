#!/bin/zsh

# Directory of dotfiles
export DOTDIR="${HOME}/dotfies"

# Install zsh
export ZDOTDIR="${DOTDIR}/zsh"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done

ln -s "${ZDOTDIR:-$HOME}"/runcoms/zshenv "${HOME}"/.zshenv

#Instal emacs
export EMACSDIR="${DOTDIR}/emacs"

ln -s "${DOTDIR}/emacs" "${HOME}/.emacs.d"
