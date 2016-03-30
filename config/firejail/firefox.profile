include /etc/firejail/firefox.profile
private-etc passwd,group,hostname,hosts,nsswitch.conf,resolv.conf,gtk-2.0,gtk-3.0,fonts,mime.types,asound.conf,pulse

# Use ~/firefox as user home
private ~/firefox
