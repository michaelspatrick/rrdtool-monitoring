#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/apache_requests.rrd
COUNTERFILE=$DBDIR/apache_requests.counter.txt

LASTCOUNT=$(< $COUNTERFILE)
REQUESTS=`wc -l $ACCESSLOG | sed 's/\([0-9]*\).*/\1/'`
echo $REQUESTS > $COUNTERFILE

DIFF=$(( REQUESTS - LASTCOUNT))
RATEFLOAT=$(echo "$DIFF / 60" |bc -l)

echo $RATEFLOAT

rrdtool update $DBFILE N:$RATEFLOAT
