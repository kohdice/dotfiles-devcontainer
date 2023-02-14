##aliases

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias cl='clear'

alias ..2='../..'
alias ..3='../../..'
alias ..4='../../../../'

# ls
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -hlrt'
alias la='ls $LS_OPTIONS -hlrta'
export CLICOLOR=1

# git
alias g="git"


## settings

if [ -f ~/.git-completion.sh ]; then
    source ~/.git-completion.sh
fi
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=true

PS1_THEME_ARROW=''
PS1_THEME_USR='\[\e[0;30;47m\] \u\$ '
PS1_THEME_DIVISION1='\[\e[0;37;44m\]'$PS1_THEME_ARROW
PS1_THEME_DIR='\[\e[0;37;44m\] \w '
PS1_THEME_DIVISION2='\[\e[0;34;42m\]'$PS1_THEME_ARROW
PS1_THEME_GIT='\[\e[0;37;42m\] $(__git_ps1 "%s") '
PS1_THEME_DIVISION3='\[\e[0;32;49m\]'$PS1_THEME_ARROW
PS1_THEME_CMD='\[\e[0;36;49m\] '
PS1_THEME_RST='\[\e[0;39;49m\]'
export PS1=$PS1_THEME_USR$PS1_THEME_DIVISION1$PS1_THEME_DIR$PS1_THEME_DIVISION2$PS1_THEME_GIT$PS1_THEME_DIVISION3$PS1_THEME_CMD$PS1_THEME_RST
