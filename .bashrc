#
# ~/.bashrc
#

[[ $- != *i* ]] && return

PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
PS2="> "

export PATH=$PATH:~/.scripts:

alias \
    ls="ls --color=auto" \
    grep="grep --color=auto" \
    mv="mv -iv" \
    cp="cp -iv" \
    rm="rm -iv" \
    mkd="mkdir -pv" \
    lsl="ls -hal" \
    neofetch="fastfetch" \
    ss="ss -tulpn" \
    hugoup="hugo server --noHTTPCache -D" \
    vps="ssh root@git.troylusty.com" \
    vim="nvim" \
    gobuild="go build -ldflags '-s -w'" \