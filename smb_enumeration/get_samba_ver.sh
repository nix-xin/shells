#!/bin/sh
#Author: rewardone
#Description:
# Requires root or enough permissions to use tcpdump
# Will listen for the first 7 packets of a null login
# and grab the SMB Version
#Notes:
# Will sometimes not capture or will print multiple
# lines. May need to run a second time for success.
if [ -z $1 ];
  then echo "Usage: ./smbver.sh RHOST {RPORT}" && exit;
  else rhost=$1;
fi

if [ ! -z $2 ];
  then rport=$2;
  else rport=139;
fi

tcpdump -s0 -n -i eth0 src $rhost and port $rport -l -A -c 7 2>/dev/null | grep -oP 'Unix\.Samba [0-9]\.[0-9]\.[0-9][a-z]' | tr -d '\n' & echo -n "$rhost: " & echo "exit" | smbclient -L $rhost 1>/dev/null 2>/dev/null

sleep 0.5 && echo ""
