# Read the Xresources file if it exists.
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Launch the xscreensaver daemon.
/usr/bin/xscreensaver -no-splash &

# Pretty desktop effects with Cairo.
cairo-compmgr &

# Restore the desktop background.
nitrogen --restore &

# Launch the taskbar.
tint2 &

# Launch Thunar as a daemon.
thunar --daemon &

# Control volume with volwheel.
volwheel &

# Synapse for app launching.
synapse -s &

# Dropbox for syncing.
dropboxd &

# Yet another package manager notifier.
yapan &

# OpenBox!
exec openbox-session
