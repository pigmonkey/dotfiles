include /etc/firejail/disable-mgmt.inc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
caps.drop all
seccomp
protocol unix,inet,inet6
netfilter
noroot

# Use ~/firefox as user home
private ~/firefox
