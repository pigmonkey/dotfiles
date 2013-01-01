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

# Hide the cursor when idle.
unclutter &

# Adjust color temperature with Redshift.
gtk-redshift &

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
    trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 5 --transparent true --tint 0x1f1f1f --alpha 0 --height 10 &
    exec $DEFAULT_SESSION
    ;;
esac
