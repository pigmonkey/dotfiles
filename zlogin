#
# Executes commands at login post-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Execute code that does not affect the current session in the background.
{
  # Compile the completion dump to increase startup speed.
  zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
  if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    zcompile "$zcompdump"
  fi
} &!

# Print a random, hopefully interesting, adage.
if (( $+commands[fortune] )); then
  fortune -a
  print
fi

# If Keychain is installed, run it.
hash keychain 2> /dev/null
if [ $? -eq 0 ]; then
keychain ~/.ssh/id_rsa
    if [ -f ~/.keychain/$HOST-sh ]; then
source ~/.keychain/$HOST-sh
    fi
fi

# Execute machine-specific bootstrap script.
if [ -f ~/bin/bootstrap.sh ]; then
    ~/bin/bootstrap.sh
fi
