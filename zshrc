#########
# zplug #
#########

source /usr/share/zsh/scripts/zplug/init.zsh

zplug "subnixr/minimal"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "chrissicool/zsh-256color"
zplug "joel-porquet/zsh-dircolors-solarized"
zplug "jreese/zsh-titles"
zplug "plugins/gpg-agent", from:oh-my-zsh
zplug "plugins/virtualenvwrapper", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "pigmonkey/prezto", use:"modules/git/*zsh"
zplug "pigmonkey/prezto", use:"modules/buildfile/*zsh"
zplug "pigmonkey/prezto", use:"modules/notes/*zsh"
zplug "pigmonkey/prezto", use:"modules/pass/*zsh"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load


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
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Share history across all terminals.
setopt share_history

# Keep a ton of history.
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zhistory
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"


########
# Misc #
########

source ~/.aliases

# Add ruby gems to the path.
if which ruby >/dev/null && which gem >/dev/null; then
    path=($(ruby -rubygems -e 'puts Gem.user_dir')/bin $path)
fi

# Use SSH completion for Mosh.
compdef mosh=ssh

######
# Vi #
######
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M vicmd "?" history-incremental-search-backward
bindkey -M vicmd "/" history-incremental-search-forward
