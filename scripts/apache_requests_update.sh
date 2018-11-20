#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/apache_requests.rrd
COUNTERFILE=$DBDIR/apache_requests.counter.txt

if [ -f $COUNTERFILE ]; then
  LASTCOUNT=$(< $COUNTERFILE)
else
  LASTCOUNT=`wc -l $ACCESSLOG | sed 's/\([0-9]*\).*/\1/'`
  echo $LASTCOUNT > $COUNTERFILE
fi

REQUESTS=`wc -l $ACCESSLOG | sed 's/\([0-9]*\).*/\1/'`
echo $REQUESTS > $COUNTERFILE

DIFF=$(( REQUESTS - LASTCOUNT))
RATEFLOAT=$(echo "$DIFF / 60" |bc -l)

echo $RATEFLOAT

rrdtool update $DBFILE N:$RATEFLOAT
