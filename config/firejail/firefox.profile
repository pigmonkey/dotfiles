include /etc/firejail/disable-mgmt.inc
caps.drop all
seccomp
netfilter
noroot

# Use ~/firefox as user home
private ~/firefox
