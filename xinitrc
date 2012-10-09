# Read the Xresources file if it exists.
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Battery monitoring with Batti.
batti &

# Map keys with xmodmap
xmodmap ~/.Xmodmap

# Bind keys with xbindkeys.
xbindkeys &

# Launch the xscreensaver daemon.
/usr/bin/xscreensaver -no-splash &

# Pretty desktop effects with Cairo.
cairo-compmgr &

# Restore the desktop background.
if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

# Launch Thunar as a daemon.
thunar --daemon &

# Control volume with volwheel.
volwheel &

# Dropbox for syncing.
dropboxd &

# Launch the session!
DEFAULT_SESSION=awesome
case $1 in
  awesome|openbox-session) exec $1 ;;
    *) exec $DEFAULT_SESSION ;;
    esac
