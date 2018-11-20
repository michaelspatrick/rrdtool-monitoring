#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/net.rrd

# gets incoming and outgoing bytes from the specified network device (bytes/sec)
#INCOMING=`sar -n DEV 0 | grep ath0 | awk '{ print $5 }'`
#OUTGOING=`sar -n DEV 0 | grep ath0 | awk '{ print $6 }'`

TRAFFIC=`cat /proc/net/dev | grep eth0 | cut -d: -f2 | awk '{ print $1":"$9}'`

echo $TRAFFIC
rrdtool update $DBFILE N:$TRAFFIC
