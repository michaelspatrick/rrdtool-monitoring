#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/varnish.rrd

CACHEHITS=`sudo varnishstat -1 | grep MAIN.cache_hit | head -1 | awk '{print $2}'`
CACHEMISSES=`sudo varnishstat -1 | grep MAIN.cache_miss | head -1 | awk '{print $2}'`
CACHEHITRATE=`echo "($CACHEHITS / ($CACHEHITS + $CACHEMISSES)) * 100" | bc -l`

echo $CACHEHITRATE

rrdtool update $DBFILE N:$CACHEHITRATE
