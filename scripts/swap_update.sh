#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/swap.rrd

# space_used:space_available
USED=`free | grep "Swap:" | awk '{print $3}'`
AVAIL=`free | grep "Swap:" | awk '{print $4}'`
USAGE="$USED:$AVAIL"

echo $USAGE

rrdtool update $DBFILE N:$USAGE
