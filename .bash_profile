# ~/.bash_profile
#

if [ -n "$SSH_CONNECTION" ]; then
export PS1="\[$(tput setaf 1)\]┌─╼ [$(tput setaf 7)\] \u \[$(tput setaf 1)\]╺─╸\[$(tput setaf 7)\] \H \[$(tput setaf 7)\][\w]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼ \[$(tput setaf 7)\][ssh]\"; else echo \"\[$(tput setaf 1)\]└╼ \[$(tput setaf 7)\][ssh]\"; fi) \[$(tput setaf 7)\]"
else
export PS1="\[$(tput setaf 1)\]┌─╼\[$(tput setaf 3)\] \u\[$(tput setaf 1)\] ╺─╸\[$(tput setaf 1)\] \H \[$(tput setaf 7)\][\[$(tput setaf 5)\]\w\[$(tput setaf 7)\]]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼\"; else echo \"\[$(tput setaf 1)\]└╼\"; fi) \[$(tput setaf 7)\]"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
