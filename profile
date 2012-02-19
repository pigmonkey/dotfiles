# Set potentially useful system variables.
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/ */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"

# Execute machine-specific bootstrap script
if [ -f ~/bin/bootstrap.sh ]; then
    ~/bin/bootstrap.sh
fi

# If this is a bash shell and ~/.bashrc exists, load it.
if [ `echo $0 | grep bash` ]; then
    if [ -f ~/.bashrc ] ]; then
        source ~/.bashrc
    fi
fi
