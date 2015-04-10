#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

smiley () {(if [[ $? == 0 ]]; then echo -e "\e[32m$?\e[m"; else echo -e "\e[31m$?\e[m"; fi)}
PS1="\[\e[00;34m\]\u@\h \$(smiley) \e[30;1m\w\e[0m\n\$ "

