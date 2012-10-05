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

# Launch the taskbar.
tint2 &

# Launch Thunar as a daemon.
thunar --daemon &

# Control volume with volwheel.
volwheel &

# Dropbox for syncing.
dropboxd &

# OpenBox!
exec openbox-session
