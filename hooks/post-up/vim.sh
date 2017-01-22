#!/bin/sh

if hash vim 2> /dev/null; then
    vim +PluginInstall! +qall
fi
