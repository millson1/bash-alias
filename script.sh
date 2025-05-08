#!/bin/bash

# backup bashrc just in case
cp ~/.bashrc ~/.bashrc.backup 2>/dev/null

# add some good stuff to bash_aliases
cat << 'EOF' >> ~/.bash_aliases

# ls shortcuts cuz who wants to type that much
alias l='ls -lah' 
alias ll='ls -l'
alias la='ls -a'
alias ls='ls --color=auto'

# faster navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# common typos/shortcuts
alias cls='clear'
alias pls='sudo'
alias plz='sudo'

# quick git stuff
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git pull'
alias yeet='git push'    # yeet that code
alias yoink='git pull'   # yoink that code

# safety first
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# handy stuff
alias h='history'
alias p='ps aux'
alias df='df -h'
alias free='free -h'
alias update='sudo apt update && sudo apt upgrade -y'

# show directory content after cd
function cd() {
    builtin cd "$@" && ls
}

# make a dir and cd into it
function mkcd() {
    mkdir -p "\$1" && cd "\$1"
}

# extract basically any archive
function extract() {
    if [ -f \$1 ]; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) tar xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *) echo "'\$1' can't be extracted" ;;
        esac
    else
        echo "'$1' is not a file"
    fi
}

EOF

# make sure bash loads our aliases
if ! grep -q "source ~/.bash_aliases" ~/.bashrc; then
    echo "
# load our cool aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi" >> ~/.bashrc
fi

# load em up
source ~/.bashrc

echo "All done! Your old bashrc is backed up just in case"
