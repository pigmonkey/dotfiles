# Set the path to oh-my-zsh.
export ZSH=$HOME/.oh-my-zsh

# Set the name of the theme to load.
export ZSH_THEME="flazz"

# Disable weekly oh-my-zsh update checks.
export DISABLE_AUTO_UPDATE="true"

# Set the plugins to load.
plugins=(vi-mode git pip)

# Load oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Do not correct everything.
unsetopt correct_all
setopt correct

# Limit history size
HISTSIZE=1000
SAVEHIST=1000

# Change to vi command mode with kj.
bindkey -M viins 'kj' vi-cmd-mode

# Set $HOSTNAME to $HOST for compatibility with bash scripts.
export HOSTNAME=$HOST

# Load agnostic interactive shell configuration.
if [ -f ~/.shellrc ]; then
    source ~/.shellrc
fi

# Set autocompletion for notes.
compctl -W $NOTEDIR -f n

# Set autocompletion for password databases.
compctl -W $PASSDIR -f pw
