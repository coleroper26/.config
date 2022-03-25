#!/bin/bash
# Cole Roper

__set_prompt() {
    local EXIT="$?"
    PS1=""
    if [ $EXIT -eq 0 ]; then
        PS1=$(echo "$(tput setaf 66)\u$(tput sgr0)@$(tput setaf 66)\h $(tput sgr0)| $(tput setaf 72)\W $(tput sgr0)| $(tput setaf 106)\$ $(tput sgr0)")
    else
        PS1=$(echo "$(tput setaf 66)\u$(tput sgr0)@$(tput setaf 66)\h $(tput sgr0)| $(tput setaf 72)\W $(tput sgr0)| $(tput setaf 167)$EXIT $(tput sgr0)| $(tput setaf 124)\$ $(tput sgr0)")
    fi
}

__set_prompt_focused() {
    local EXIT="$?"
    if [ $EXIT -eq 0 ]; then
        PS1=$(echo "[ $(tput setaf 66)\u$(tput sgr0)@$(tput setaf 66)\h $(tput sgr0)| $(tput setaf 72)\w $(tput sgr0)| $(tput setaf 142)$EXIT $(tput sgr0)| $(tput setaf 106)\$ $(tput sgr0)]\n >> ")
    else
        PS1=$(echo "[ $(tput setaf 66)\u$(tput sgr0)@$(tput setaf 66)\h $(tput sgr0)| $(tput setaf 72)\w $(tput sgr0)| $(tput setaf 167)$EXIT $(tput sgr0)| $(tput setaf 124)\$ $(tput sgr0)]\n >> ")
    fi
}


