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

# Bind history search keys.
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward  

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

# Build the battery charge prompt.
function battery_charge {
    # Make sure acpi is installed.
    hash acpi 2> /dev/null

    if [ $? -eq 0 ]; then

        # Get the battery state.
        BATTSTATE="$(acpi -b)"
        BATTPERCENT="$(echo ${BATTSTATE[(w)4]} | sed -r 's/(^[0-9]+).*/\1/')"
        BATTSTATUS="$(echo ${BATTSTATE[(w)3]})"

        # Set the battery prompt.
        if [[ "${BATTSTATUS}" = "Discharging," ]]; then
            BATTPROMPT="${BATTPERCENT}%% ↺"
        fi
        if [[ "${BATTSTATUS}" = "Charging," ]]; then
            BATTPROMPT="${BATTPERCENT}%% ↻"
        fi

        # Colorize the battery prompt based on percentage.
        if [[ "${BATTPERCENT}" -lt 15 ]]; then
            BATTPROMPT="%{$fg[red]%}$BATTPROMPT"
        elif [[ "${BATTPERCENT}" -lt 60 ]]; then
            BATTPROMPT="%{$fg[yellow]%}$BATTPROMPT"
        else
            BATTPROMPT="%{$fg[green]%}$BATTPROMPT"
        fi

        # Reset the color after the battery prompt.
        BATTPROMPT="$BATTPROMPT%{$reset_color%}"
    fi

    echo $BATTPROMPT
}

# Add the battery charge prompt to the right prompt.
RPS1='$(vi_mode_prompt_info) ${return_code} $(battery_charge) '
