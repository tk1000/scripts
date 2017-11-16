# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export HTTP_PROXY=http://10.60.10.254:3128/
export HTTPS_PROXY=http://10.60.10.254:3128/
# User specific aliases and functions

#User scripts to be run from ~/bin directory.
export PATH=$PATH:/home/tkhattak/bin

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

#PS1="[\u@\h$NO_COLOR \W$YELLOW\$(parse_git_branch)$NO_COLOR]\$ "
PS1="$RED[$NO_COLOR\u@\h$NO_COLOR \W$YELLOW\$(parse_git_branch)$RED]$NO_COLOR\$ "
