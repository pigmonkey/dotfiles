#!/bin/sh

if hash antibody 2> /dev/null; then
     antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
fi
