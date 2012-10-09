# Set the path to oh-my-zsh.
export ZSH=$HOME/.oh-my-zsh

# Add ~/bin to the beginning of the path.
if [ -d ~/bin ]; then
    export PATH=:~/bin:$PATH
fi

# Add the Ruby bin to the beginning of the path.
if [ -d ~/.gem/ruby/1.9.1/bin ]; then
    export PATH=:~/.gem/ruby/1.9.1/bin:$PATH
fi

# Set the name of the theme to load.
export ZSH_THEME="fishy"

# Disable weekly oh-my-zsh update checks.
export DISABLE_AUTO_UPDATE="true"

# Set the plugins to load.
plugins=(vi-mode git pip)

# Load oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Disable ZSH completion on sudo.
alias sudo='nocorrect sudo'

# Set $HOSTNAME to $HOST for compatibility with bash scripts.
export HOSTNAME=$HOST

# Set vim as the default editor.
export EDITOR='vim'

# Set the Python version for virtualenvwrapper to use on WebFaction.
if [[ `hostname` =~ webfaction  ]] ; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
fi

# Install virtualenvwrapper, wherever it may be!
if [ -f $HOME/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        source $HOME/bin/virtualenvwrapper.sh
elif [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        source /usr/local/bin/virtualenvwrapper.sh
elif [ -f /usr/bin/virtualenvwrapper.sh ]; then
        export WORKON_HOME=$HOME/.virtualenvs
        source /usr/bin/virtualenvwrapper.sh
fi

# Set GPG_TTY for gpg-agent.
export GPG_TTY=`tty`

# Set todo.txt to list tasks by default
export TODOTXT_DEFAULT_ACTION=ls

# Load shell aliases.
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
