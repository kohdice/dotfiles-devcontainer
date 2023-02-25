##aliases

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias cl='clear'

alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../../'

# ls
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -hlrt'
alias la='ls $LS_OPTIONS -hlrta'
export CLICOLOR=1

# git
alias g='git'

# Start neovim with the following command
alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'

# Edit .bashrc with neovim
alias bashconfig='vim ~/.bashrc'
# Reload .bashrc
alias bashreload='source ~/.bashrc'


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
GIT_PS1_SHOWUPSTREAM='auto'
GIT_PS1_SHOWCOLORHINTS=true


## Powerline

PS1_THEME_ARROW=''
# User
PS1_THEME_USER='\[\e[0;30;47m\] \u\$ '
PS1_THEME_SEPARATOR1='\[\e[0;37;44m\]'$PS1_THEME_ARROW
# Current directory
PS1_THEME_DIRECTORY='\[\e[1;37;44m\] \w '
PS1_THEME_SEPARATOR2='\[\e[0;34;42m\]'$PS1_THEME_ARROW
# Git branch
PS1_THEME_GIT='\[\e[0;37;42m\] $(__git_ps1 "%s") '
PS1_THEME_SEPARATOR3='\[\e[0;32;49m\]'$PS1_THEME_ARROW
# Command
PS1_THEME_COMMAND='\[\e[0;39;49m\] '

export PS1=$PS1_THEME_USER$PS1_THEME_SEPARATOR1$PS1_THEME_DIRECTORY$PS1_THEME_SEPARATOR2$PS1_THEME_GIT$PS1_THEME_SEPARATOR3$PS1_THEME_COMMAND
