#!/bin/sh

BASEDIR="$FIREWARDEN_HOME/basedir"

# Import config file.
mkdir -p "$BASEDIR/config"
cp "$HOME"/.config/qutebrowser/*.py "$BASEDIR/config"

# Import spellcheck dictionary.
mkdir -p "$BASEDIR/data"
cp -a "$HOME/.local/share/qutebrowser/qtwebengine_dictionaries" "$BASEDIR/data"
