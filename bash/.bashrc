# export
export LSCOLORS=gxfxcxdxbxGxDxabagacad

# valiables
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
RESET="\[\033[0m\]"

# alias
alias cd='cdls'
alias ls='ls --color'
alias ll='ls -l'

# bind
bind "\C-p":history-search-backward
bind "\C-n":history-search-forward

# function
cdls () {
    \cd "$@" && ls
}

# settings
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM="auto"
fi

# prompt
#PS1="\[\e[32m\][\u@\h \w]\\$\[\e[0m\] "
PS1_GIT='$(__git_ps1 " (%s)")'
PS1="${GREEN}[${GREEN}\u@\h ${GREEN}\w${YELLOW}${PS1_GIT}${GREEN}]\\$ ${RESET}"

