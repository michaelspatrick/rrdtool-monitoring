#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/load.rrd

NOW=`date +%s`

if [ -e "$DBFILE" ]
then
	echo "file exists: $DBFILE"
else

	rrdtool create $DBFILE --step 60 \
		DS:user:GAUGE:300:0:U \
		DS:nice:GAUGE:300:0:U \
		DS:system:GAUGE:300:0:U \
		DS:iowait:GAUGE:300:0:U \
		DS:idle:GAUGE:300:0:U \
		RRA:AVERAGE:0.5:1:10080 \
		RRA:MAX:0.5:60:1 \
		RRA:MAX:0.5:180:1 \
		RRA:MAX:0.5:360:1 \
		RRA:MAX:0.5:720:1 \
		RRA:MAX:0.5:1440:1 \
		RRA:MAX:0.5:2880:1 \
		RRA:MAX:0.5:4320:1 \
		RRA:MAX:0.5:10080:1

	echo "file created: $DBFILE"
fi
