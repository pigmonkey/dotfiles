#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

path=($HOME/bin $path)

# Add ruby gems to the path.
if which ruby >/dev/null && which gem >/dev/null; then
    path=($(ruby -rubygems -e 'puts Gem.user_dir')/bin $path)
fi
