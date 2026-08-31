#!/bin/sh

# Clone the tinty template repositories so theme switching works.
if command -v tinty > /dev/null 2>&1; then
    tinty sync || exit 0

    # Only choose a scheme if none has been chosen yet.
    tinty current > /dev/null 2>&1 || tinty apply base16-gruvbox-dark-medium
fi
