#!/bin/ksh
## Cole Roper

## SOURCE
[ -f ~/.ksh_aliases ] && . ~/.ksh_aliases
[ -f ~/.ksh_functions ] && . ~/.ksh_functions

## HISTORY
HISTCONTROL=ignoreboth  # no dupes
HISTSIZE=1000           # commands in RAM at start/stop
HISTFILESIZE=2000       # commands on DISK at login/logout

## TERMINAL
set -o vi                               # vi-like keybinds
case $- in *i*) ;; *) return;; esac     # not interactive, do nothing
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"    # using lesspipe, switch to sh

## PROMPT
# if [[ "$TERM" == *"-256color" ]]; then
#     PROMPT_COMMAND=__set_prompt
# fi

PS1=$(__prompt_default)
alias ease='PS1="$(__prompt_default)"; clear'
alias drill='PS1="$(__prompt_focus)"; cleat'

