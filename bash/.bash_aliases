# .bash_aliases
## Cole Roper


# Files
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi
# alias lt='ls --human-readable --size -1 -S --classify'
alias lt='ls -l -1'

# Terminmal
alias drill='export PROMPT_COMMAND=__set_prompt_focused; cleat'
alias ease='export PROMPT_COMMAND=__set_prompt; clear'
alias cleat='clear; lt'
alias sc='scrot -s '

# Trash
alias toss='mv --force -t ~/.local/share/Trash --'
alias toss-empty='rm -rf ~/.local/share/Trash/*'

# Programs
alias v='nvim'              # Editor
alias z='zathura --fork'    # PDF
