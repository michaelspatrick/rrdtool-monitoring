#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/apache_requests.rrd
COUNTERFILE=$DBDIR/apache_requests.counter.txt

NOW=`date +%s`

if [ -e "$DBFILE" ]
then
	echo "file exists: $DBFILE"
else

	rrdtool create $DBFILE --step 60 \
		DS:requests:GAUGE:300:0:U \
		RRA:AVERAGE:0.5:1:10080 \
		RRA:MIN:0.5:60:1 \
		RRA:MAX:0.5:60:1 \
		RRA:MIN:0.5:180:1 \
		RRA:MAX:0.5:180:1 \
		RRA:MIN:0.5:360:1 \
		RRA:MAX:0.5:360:1 \
		RRA:MIN:0.5:720:1 \
		RRA:MAX:0.5:720:1 \
		RRA:MIN:0.5:1440:1 \
		RRA:MAX:0.5:1440:1 \
		RRA:MIN:0.5:2880:1 \
		RRA:MAX:0.5:2880:1 \
		RRA:MIN:0.5:4320:1 \
		RRA:MAX:0.5:4320:1 \
		RRA:MIN:0.5:10080:1 \
		RRA:MAX:0.5:10080:1

	echo "file created: $DBFILE"
fi

LASTCOUNT=`wc -l $ACCESSLOG | sed 's/\([0-9]*\).*/\1/'`
echo $LASTCOUNT > $COUNTERFILE
