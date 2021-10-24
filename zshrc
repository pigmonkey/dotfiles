###########
# plugins #
###########

autoload -Uz compinit
compinit

source ~/.zsh_plugins.sh


###########
# History #
###########

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt pushd_ignore_dups

# History Substring Search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Share history across all terminals.
setopt share_history

# Keep a ton of history.
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zhistory
export HISTORY_IGNORE="(ls|l|ll|lt|[bf]g|exit|reset|clear|cd|cd ..|cd ../|pwd|date|* --help)"


########
# Misc #
########

source ~/.aliases

# Add ruby gems to the path.
if which ruby >/dev/null && which gem >/dev/null; then
    path=($(ruby -e 'puts Gem.user_dir')/bin $path)
fi

# Add node packages to the path.
test -r "$HOME/.node_modules/bin" && path=("$HOME/.node_modules/bin" $path)

# Use SSH completion for Mosh.
compdef mosh=ssh

# Menu completion
zstyle ':completion:*' menu select

# Prevent Pure from auto-pulling git repos.
PURE_GIT_PULL=0

# Activate dircolors
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Reverse menu with shift-tab.
bindkey '^[[Z' reverse-menu-complete


######
# Vi #
######

bindkey -M viins 'kj' vi-cmd-mode
bindkey -M vicmd "?" history-incremental-search-backward
bindkey -M vicmd "/" history-incremental-search-forward
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


#######
# FZF #
#######

if [ -r /usr/share/fzf/key-bindings.zsh ]; then
    source /usr/share/fzf/key-bindings.zsh
fi
if [ -r /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/completion.zsh
fi

rga-fzf() {
    RG_PREFIX="rga --files-with-matches"
    local file
    file="$(
        FZF_DEFAULT_COMMAND="$RG_PREFIX $@" \
            fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
                --bind=tab:down,btab:up \
                --phony -q "$1" \
                --bind "change:reload:$RG_PREFIX {q}" \
                --preview-window="70%:wrap"
    )" &&
    echo "opening $file" &&
    xdg-open "$file"
}


########
# Pass #
########

# Setup alternative pass.
wpass() {
    PASSWORD_STORE_DIR="$ALTPASSDIR" pass "$@"
}
compdef -e 'PASSWORD_STORE_DIR=$ALTPASSDIR _pass' wpass

# Access pass
access() {
    PASSWORD_STORE_DIR="$ACCESSPASSDIR" pass "$@"
}
compdef -e 'PASSWORD_STORE_DIR=$ACCESSPASSDIR _pass' access

# Finance pass
fin() {
    PASSWORD_STORE_DIR="$FINPASSDIR" pass "$@"
}
compdef -e 'PASSWORD_STORE_DIR=$FINPASSDIR _pass' fin


#########
# Color #
#########

BASE16_SHELL="$HOME/library/src/base16-shell"
BASE16_I3="$HOME/library/src/base16-i3"

[ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"

theme() {
    i3config="$HOME/projects/dotfiles/config/i3/config"
    theme="gruvbox-dark-soft"
    [[ "$1" == "day" ]] && theme="gruvbox-light-soft"
    echo "$theme"
    # set shell
    _base16 "$BASE16_SHELL"/scripts/base16-"$theme".sh "$theme"
    # set i3
    sed -i '1,/## Colors/!d' "$i3config"
    cat "$BASE16_I3"/colors/base16-"$theme".config >> "$i3config"
    i3-msg -q reload
    # set qutebrowser
    cp "$HOME/library/src/base16-qutebrowser/themes/minimal/base16-$theme.config.py" ~/.config/qutebrowser/theme.config.py
}
