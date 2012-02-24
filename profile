# Set an OS variable. Useful for figuring out if this machine is running Linux,
# or Drawin, or FreeBSD, etc.
export OS=`uname -s | tr '[:upper:]' '[:lower:]'`

# If this is a bash shell and ~/.bashrc exists, load it.
if [ `echo $0 | grep bash` ]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
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
