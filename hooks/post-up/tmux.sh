#!/bin/sh

if hash tmux 2> /dev/null; then
    ~/.dotfiles/tmux/plugins/tpm/bin/install_plugins
fi
