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

# Hide the cursor when idle
unclutter &

# Launch the session!
DEFAULT_SESSION=xmonad
case $1 in
openbox-session)
    cairo-compmgr &
    exec openbox-session
    ;;
awesome)
    cairo-compmgr &
    exec awesome
    ;;
*)
    xsetroot -cursor_name left_ptr
    trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --tint 0x000000 --alpha 50 --height 10 &
    exec $DEFAULT_SESSION
    ;;
esac
