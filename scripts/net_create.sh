#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/net.rrd

NOW=`date +%s`

if [ -e "$DBFILE" ]
then
	echo "file exists: $DBFILE"
else
	rrdtool create $DBFILE -s 60 \
		DS:in:COUNTER:300:U:U \
		DS:out:COUNTER:300:U:U \
		RRA:AVERAGE:0.5:1:4320 	\
		RRA:AVERAGE:0.5:60:72 	\
		RRA:AVERAGE:0.5:180:24 	\
		RRA:AVERAGE:0.5:360:12  \
		RRA:AVERAGE:0.5:720:6 	\
		RRA:AVERAGE:0.5:1440:3 	\
		RRA:AVERAGE:0.5:2880:2 	\
		RRA:AVERAGE:0.5:4320:1 	\
		RRA:AVERAGE:0.5:10080:1	\
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
