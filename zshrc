# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Put ~/bin in the beginning of the path.
if [ -d ~/bin ]; then
    export PATH=:~/bin:$PATH # add your bin directory to your path
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="fishy"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip)

source $ZSH/oh-my-zsh.sh

# Apt Aliases
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'

# Git Aliases (in addition to those provided by the git plugin)
alias ga='git add'
alias gs='git status -s'
alias gd='git diff'
alias gx='git rm $(git ls-files --deleted)'
alias gr='git reset --hard HEAD'

# Set vim as the default editor
export EDITOR='vim'

# Install virtualenvwrapper, wherever it may be!
if [[ `hostname` =~ webfaction  ]] ; then
    if [ -f $HOME/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
        source $HOME/bin/virtualenvwrapper.sh
    fi
else
    if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        source /usr/local/bin/virtualenvwrapper.sh
    fi
    if [ -f /usr/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        source /usr/bin/virtualenvwrapper.sh
    fi
fi

# Set the default Python and easy_install version on WebFaction
if [[ `hostname` =~ webfaction  ]] ; then
    alias python='python2.7'
    alias easy_install='easy_install-2.7'
fi

# Set GPG_TTY for vim's GnuPG plugin
export GPG_TTY=`tty`
