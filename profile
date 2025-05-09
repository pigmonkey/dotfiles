#
# Terminal
#

export TERMINAL='kitty'

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Path
#

export PATH=~/bin:~/.local/bin/:~/.cargo/bin:$PATH

#
# Less
#

# Set the default Less options.
export LESS='-F -g -i -M -R -w -z-4 -#3'

# Make all Private Use Area characters be treated as printable.
export LESSUTFCHARDEF=E000-F8FF:p,F0000-FFFFD:p,100000-10FFFD:p

# Find lesspipe
if command -v lesspipe.sh >/dev/null 2>&1; then
    lesspipe="lesspipe.sh"
elif command -v lesspipe >/dev/null 2>&1; then
    lesspipe="lesspipe"
fi

# Set the less input preprocessor.
if [[ -z "$lesspipe" ]]; then
  export LESSOPEN="| $lesspipe %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

#
# Python
#

# Set the default environment directory for virtualenvwrapper.
export WORKON_HOME="$HOME/.virtualenvs"

# Set the default project directory for virtualenvwrapper.
export PROJECT_HOME="$HOME/projects"

# Load virtualenvwrapper (lazy).
source /usr/bin/virtualenvwrapper_lazy.sh

# Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

#
# Notes
#

# Set the default note directory.
export NOTEDIR=~/library/notes

# Open spreadsheet notes in visidata
export NOTEXDGEXT="csv tsv"

#
# Journal
#

# Set the default journal directory.
export JOURNALDIR=~/library/journal

#
# Passwords
#

# Set the alternative pass directory.
export ALTPASSDIR=~/projects/tad/pass

# Set the access pass directory.
export ACCESSPASSDIR=~/projects/tad/access

# Set the finance pass directory.
export FINPASSDIR=~/library/finance

#
# Misc
#

# Set the dmenu font.
export DMENU_OPTIONS="-fn -inconsolata-medium-r-*-*-14-*"

# Source credentials.
if [ -f ~/.keys/creds.sh ]; then
    source ~/.keys/creds.sh
fi

# Disable QT5 DPI scaling
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# Set GPG TTY
export GPG_TTY=$(tty)

# Use GPG for SSH Agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Contain the toxic JavaScript ecosystem.
export npm_config_prefix=~/.node_modules
