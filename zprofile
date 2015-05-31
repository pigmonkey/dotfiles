#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Terminal
#

export TERMINAL='termite'

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
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

# Set the default project directory for virtualenvwrapper.
export PROJECT_HOME="$HOME/projects"

# Set the default virtualenvwrapper options.
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

#
# Notes
#

# Set the default note directory.
export NOTEDIR=~/documents/notes

#
# Passwords
#

# Set the alternative pass directory.
export ALTPASSDIR=~/projects/tad/pass

#
# Ledger Encryption
#

# Set the directory of the EncFS filesystem.
export LEDGERCRYPT=~/.ledger-crypt

# Set the mount point of the EncFS filesystem.
export LEDGERMOUNT=~/ledger

# Set the file which contains the GnuPG encrypted passphrase.
export LEDGERPASS=~/.ledger.gpg

#
# Misc
#

# Set the dmenu font.
export DMENU_OPTIONS="-fn -xos4-terminus-medium-r-*-*-14-*"
