include /etc/firejail/disable-mgmt.inc
include /etc/firejail/disable-common.inc
caps.drop all
seccomp
netfilter
noroot

# Use ~/torrents as user home
private ~/torrents
