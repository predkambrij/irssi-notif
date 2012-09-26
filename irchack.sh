#!/bin/bash

# domain or external ip
hostname="blatnik.org"
# local ip if that is different
localHostname="192.168.2.118"
# username for target host
username="lojze"

############
if [ $# -eq 1 ]; then
    if [ $1 == "home" ]; then
        hostname=$localHostname
    fi
fi

(ssh $username@$hostname -o PermitLocalCommand=no ": > .irssi/fnotify ; tail -f .irssi/fnotify " | \
   while read heading message; do \
     notify-send  -t 1  "$heading" "$message"
   done)

