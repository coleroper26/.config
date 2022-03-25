#!/bin/bash
## Cole Roper


## HISTORY
HISTCONTROL=ignoreboth  # no dupes
shopt -s histappend
HISTSIZE=1000           # commands in RAM at start/stop
HISTFILESIZE=2000       # commands on DISK at login/logout

## TERMINAL
set -o vi                               # vi-like keybinds
shopt -s checkwinsize                   # update LINES & COLUMNS after commands
shopt -s globstar                       # allow "**" wildcard in paths
case $- in *i*) ;; *) return;; esac     # not interactive, do nothing
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"    # using lesspipe, switch to sh

## PROMPT
if [[ "$TERM" == *"-256color" ]]; then
    ## Color Schemes

    # PS1=$(echo "$(tput setaf 66)\u$(tput sgr0)@$(tput setaf 66)\h $(tput setaf 72)\w $(tput setaf 124)\$ ")
    PROMPT_COMMAND=__set_prompt
    
fi

## PROGRAMMABLE COMPLETION
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

## SOURCE
[ -f ~/.bash_functions ] && . ~/.bash_functions
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
