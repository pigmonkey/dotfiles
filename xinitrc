# Read the Xresources file if it exists.
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Map keys with xmodmap
xmodmap ~/.Xmodmap

# Bind keys with sxhkd.
sxhkd &

# Launch the screen locker.
xautolock -time 09 -locker "if ! pidof physlock > /dev/null; then physlock; fi" -detectsleep -secure &

# Restore the desktop background.
if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

# Control volume with volwheel.
volwheel &

# NetworkManager for managing networks.
nm-applet &

# git-annex for syncing.
git annex assistant --autostart &

# Hide the cursor when idle.
unclutter &

# Notifications with dunst
dunst &

# Adjust color temperature with Redshift.
redshift-gtk &

# Load the best monitor profile available
autorandr --change --default default

# Monitor monitors for changes
srandrd autorandr --change --default default

# Launch the session!
exec i3 
