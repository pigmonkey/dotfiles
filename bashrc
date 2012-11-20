# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Import a list of color definitions.
if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

# Don't put duplicate lines in the history, or lines beginning with a space.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# Set the history length and history file size.
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command.
shopt -s checkwinsize

# Set a fancy prompt.
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Attempt to enable prompt colors.
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt='yes'
else
    color_prompt=
fi

# Prompt colors!
if [ $color_prompt = 'yes' ]; then
    # Root gets a highlighted username in the prompt.
    if [ ${UID} -eq 0 ]; then
        Red=$On_Red
    fi
    PS1="\[${Red}\]\u\[${Red}\]@\[${Green}\]\h\[${Green}\]:\[${IBlue}\]\w \[${White}\]\$ "
else
    PS1='\u@\h:\w \$ '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Enable color support for commonly used programs.
hash dircolors 2> /dev/null 
if [ $? -eq 0 ]; then
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Enable color support for ls in OS X.
if [ "$OS" = "darwin" ] ; then
    alias ls='ls -G'
fi

# Set $HOST to $HOSTNAME for compatibility with zsh scripts.
export HOST=$HOSTNAME

# Load agnostic interactive shell configuration.
if [ -f ~/.shellrc ]; then
    source ~/.shellrc
fi

# Load shell aliases.
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
