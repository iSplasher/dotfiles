#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias compiledwm='cd ~/abs/dwm; updpkgsums; makepkg -fi --noconfirm; killall dwm'
