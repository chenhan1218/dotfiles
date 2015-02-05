# Alias definitions.
# # You may want to put all your additions into a separate file like
# # ~/.bash_aliases, instead of adding them here directly.
# # See /usr/share/doc/bash-doc/examples in the bash-doc package.
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
#     fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ack='ack-grep'

alias dus='du -sch .[!.]* * | sort -h'
alias grep='grep --color'
alias sshcsie='ssh r97120@linux7.csie.ntu.edu.tw'
alias ll='ls -alF'

LANG=en_US.UTF-8

export LESS='-RS#3NM~g'

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

for i in ~/dotfiles/bashrc.d/*; do
	source $i
done
