#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/load.rrd

USER=`sar 0 | grep all | awk '{ print $4 }'`
NICE=`sar 0 | grep all | awk '{ print $5 }'`
SYSTEM=`sar 0 | grep all | awk '{ print $6 }'`
IOWAIT=`sar 0 | grep all | awk '{ print $7 }'`
IDLE=`sar 0 | grep all | awk '{ print $9 }'`

rrdtool update $DBFILE N:$USER:$NICE:$SYSTEM:$IOWAIT:$IDLE
