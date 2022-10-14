#!/bin/bash
# Cole Roper


__prompt_home() {
    # colors
    local EXIT="$?"
    local GREEN="\[\033[1;32m\]"
    local RED="\[\033[1;31m\]"
    local YELLOW="\[\033[1;33m\]"
    local RESET="\[\033[0m\]"

    # acronyms & exit code color
    [ $EXIT == '0' ] && local DIRCOL=$GREEN || local DIRCOL=$RED
    local CD=$(basename $PWD)
    local CWD=$(dirname $PWD)
    CWD="${CWD/#$/HOME/~}"
    
    # build PS1
    PS1="$YELLOW! "
    PS1+="$RESET$CWD/"
    PS1+="$DIRCOL$CD "
    PS1+="$RESET"
}

__prompt_remote() {
    # colors
    local EXIT="$?"
    local GREEN="\[\033[0;32m\]"
    local RED="\[\033[0;31m\]"
    local YELLOW="\[\033[1;33m\]"
    local RESET="\[\033[0m\]"

    # acronyms & exit code color
    [ $EXIT == '0' ] && local DIRCOL=$GREEN || local DIRCOL=$RED
    local CD=$(basename $PWD)
    local CWD=$(dirname $PWD)
    CWD="${CWD/#$/HOME/~}"
    
    # build PS1
    PS1="$YELLOW! "
    PS1+="$RESET$RED\h "
    PS1+="$RESET$CWD/"
    PS1+="$DIRCOL$CD "
    PS1+="$RESET"
}
