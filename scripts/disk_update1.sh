#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/disk1.rrd

# space_used:space_available
USAGE=`df -k | grep '^/dev/xvda1 ' | awk '{ print $3":"$4 }'`

rrdtool update $DBFILE N:$USAGE
