#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/disk.rrd

# space_used:space_available
USAGE=`df -k | grep '^filesystem ' | awk '{ print $3":"$4 }'`

rrdtool update $DBFILE N:$USAGE
