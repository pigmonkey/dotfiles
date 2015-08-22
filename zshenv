#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Add $HOME/.bin to the beginning of the path.
if [ -d ~/.bin ]; then
    path=($HOME/.bin $path)
fi

# Add $HOME/bin to the beginning of the path.
if [ -d ~/bin ]; then
    path=($HOME/bin $path)
fi
