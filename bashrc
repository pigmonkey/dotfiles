# Colors ----------------------------------------------------------
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 

if [ "$OS" = "linux" ] ; then
    alias ls='ls --color=auto' # For linux, etc
    # ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
    #export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90' #LS_COLORS is not supported by the default ls command in OS-X
else
    alias ls='ls -G' # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
fi

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # Lists all the colors


# Misc -------------------------------------------------------------
export HISTCONTROL=ignoredups
shopt -s checkwinsize # After each command, checks the windows size and changes lines and columns

# f'ing macbook delete key...
# the 'if' checks if the shell is interactive http://defindit.com/readme_files/bash_examples.html
if [ "$(echo $- | grep -c i)" == 1 ]; then
    stty erase 
fi

# bash completion settings (actually, these are readline settings)
#bind "set bell-style none"
#bind "set show-all-if-ambiguous On"

# Turn on advanced bash completion if the file exists (get it here: http://www.caliban.org/bash/index.shtml#completion)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi


# Prompts ----------------------------------------------------------
# export PS1="\[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with only a path
export PS1="\[${COLOR_GREEN}\]\u@\[${COLOR_BLUE}\]\h \[${COLOR_RED}\]\w > \[${COLOR_NC}\]"  # Primary prompt with user, host, and path

# This runs before the prompt and sets the title of the xterm* window.  If you set the title in the prompt
# weird wrapping errors occur on some systems, so this method is superior
# Turn this off of you are running directly in the console on the machine
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"'  # user@host path

export PS2='> '    # Secondary prompt
export PS3='#? '   # Prompt 3
export PS4='+'     # Prompt 4

function xtitle {  # change the title of your xterm* window
  unset PROMPT_COMMAND
  echo -ne "\033]0;$1\007" 
}


# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'


# Other aliases ----------------------------------------------------
alias ll='ls -hl'
alias la='ls -a'
alias lla='ls -lah'

# Misc
alias g='grep -i'  # Case insensitive grep
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias m='more'
alias df='df -h'
alias mu='memusage.py'

# Git
alias gs='git status -s'
alias ga='git add'
alias gc='git commit'

if [ "$OS" = "linux" ] ; then
  alias systail='tail -f /var/log/syslog'
else
  alias systail='tail -f /var/log/system.log'
fi


# Editors ----------------------------------------------------------
export EDITOR='vim'  # Nothing else is worthy


# Screen ------------------------------------------------
# If possible, reattach to an existing session and detach that session
# elsewhere. If not possible, create a new session.
#if [ -z "$STY" ]; then
#    exec screen -dR
#fi

# Credits -----------------------------------
# http://blog.toddwerth.com/entries/show/4
