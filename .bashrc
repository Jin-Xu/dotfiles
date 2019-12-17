#!/bin/bash
source ~/.bash_aliases

HISTCONTROL=ignoreboth
HISTIGNORE="clear:history"

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

dshell() {
    docker exec -it $1 bash
}
download() {
    docker run -it --rm -v "$PWD:/app" downloader
}
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export EDITOR=vim
