noblacklist ${HOME}/.config/calibre
include /etc/firejail/disable-mgmt.inc
include /etc/firejail/disable-secret.inc
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc

netfilter
whitelist ~/.config/calibre
whitelist ~/library
