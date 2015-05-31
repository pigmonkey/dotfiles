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

# Add $HOME/bin to the beginning of the path.
if [ -d ~/bin ]; then
    path=($HOME/bin $path)
fi

# Add ruby gems to the path.
if which ruby >/dev/null && which gem >/dev/null; then
    path=($(ruby -rubygems -e 'puts Gem.user_dir')/bin $path)
fi

alias mtr-report='mtr --report --report-cycles 10 --no-dns'

eval `dircolors $HOME/.dir_colors/dircolors.zenburn`
