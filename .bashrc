#
# ~/.bashrc
#

[[ $- != *i* ]] && return

PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
PS2="> "

export PATH=$PATH:~/.scripts:
export GPG_TTY=$(tty)

alias \
    ls="ls --color=auto" \
    grep="grep --color=auto" \
    mv="mv -iv" \
    cp="cp -iv" \
    rm="rm -iv" \
    mkd="mkdir -pv" \
    lsl="ls -hal" \
    ss="ss -tulpn" \
    hugoup="hugo server --noHTTPCache --disableFastRender --buildDrafts" \
    vps="ssh root@23.94.86.147" \
    vim="nvim" \
    gobuild="go build -ldflags '-s -w'" \
    tarit="tar -czvf" \

eval "$(starship init bash)"
