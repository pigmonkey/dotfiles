#!/bin/sh

if hash tmux 2> /dev/null; then
    ~/projects/dotfiles/tmux/plugins/tpm/bin/install_plugins
fi
