include /etc/firejail/disable-mgmt.inc
caps.drop all
seccomp
netfilter
noroot

# Use ~/torrents as user home
private ~/torrents
