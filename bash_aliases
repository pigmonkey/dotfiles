# Navigation
alias ..='cd ..'
alias ...='cd .. ; cd ..'

# Git
alias gs='git status -s'
alias ga='git add'
alias gc='git commit -v'
alias gp='git push'
alias gl='git pull'

# Apt
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'

# Memory usage script
# https://github.com/pigmonkey/systools
alias mu='memusage.py'

# Misc
alias g='grep -i'  # Case insensitive grep
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias m='more'
alias df='df -h'

if [ "$OS" = "linux" ] ; then
  alias systail='tail -f /var/log/syslog'
else
  alias systail='tail -f /var/log/system.log'
fi
