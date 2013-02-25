# ~/.bashrc: executed by bash(1) for non-login shells.

[ -f $HOME/.awsrc ] && source $HOME/.awsrc

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ll='ls -l'
alias vi='vim'
alias grep='grep --color'

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

case "$OSTYPE" in
linux*)
	alias ls='ls --color=auto'
	alias view="vim -R"

    export PS1="\[\033[01;32m\]\u@${HOSTNAME} \[\033[01;34m\]\W \$ \[\033[00m\]"
    ;;
darwin*)
	alias ls='ls -G'

    export PS1="\[\033[01;32m\]\u@macbook \[\033[01;34m\]\W \$ \[\033[00m\]"
    ;;
*)
    ;;
esac

PATH=$PATH:$HOME/bin:$HOME/.rvm/bin:/usr/local/sbin # Add RVM to PATH for scripting
