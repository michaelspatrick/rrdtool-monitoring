#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/loadavg.rrd

#USER=`sar 0 | grep all | awk '{ print $4 }'`
#NICE=`sar 0 | grep all | awk '{ print $5 }'`
#SYSTEM=`sar 0 | grep all | awk '{ print $6 }'`
#IOWAIT=`sar 0 | grep all | awk '{ print $7 }'`
#IDLE=`sar 0 | grep all | awk '{ print $9 }'`

#rrdtool update $DBFILE N:$USER:$NICE:$SYSTEM:$IOWAIT:$IDLE

rrdtool update $DBFILE \
   N:`/bin/sed "s/\([0-9]\\.[0-9]\\{2\\}\)\ \([0-9]\\.[0-9]\\{2\\}\)\ \([0-9]\\.[0-9]\\{2\\}\).*/\1:\2:\3/" < /proc/loadavg`:`/usr/bin/head -n 1 /proc/stat | /bin/sed "s/^cpu\ \+\([0-9]*\)\ \([0-9]*\)\ \([0-9]*\).*/\1:\2:\3/"`
