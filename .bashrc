#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


check_error () {(out="$?"; if [[ $out == 0 ]]; then echo -e "\e[32m$out\e[m ";else echo -e "\e[31m$out\e[m ";fi)}

PS1="\[\e[00;34m\]\u@\h \$(check_error) \e[30;1m\w\e[0m\n\$ "

# Make sure history is up to date
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*'

# Activate command-not-found
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

# Use autojump
source /etc/profile.d/autojump.bash
