alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias neofetch="echo && echo && neofetch"
alias glances="python3 -m glances --disable-bg"

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;34m\]"
if [[ $EUID == 0 ]] ; then
  PS1="$RED\u@\h [ $NORMAL\w$RED ]# $NORMAL"
else
  PS1="$GREEN\u@\h [ $NORMAL\w$GREEN ]\$ $NORMAL"
fi

unset RED GREEN NORMAL

export VISUAL=vim
export EDITOR=vim

. "$HOME/.cargo/env"
