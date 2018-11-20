#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/loadavg.rrd

NOW=`date +%s`

if [ -e "$DBFILE" ]
then
	echo "file exists: $DBFILE"
else
	rrdtool create $DBFILE --step 60 \
                DS:load1:GAUGE:180:0:U \
                DS:load5:GAUGE:180:0:U \
                DS:load15:GAUGE:180:0:U \
                DS:cpuuser:COUNTER:180:0:100 \
                DS:cpunice:COUNTER:180:0:100 \
                DS:cpusystem:COUNTER:180:0:100 \
                RRA:AVERAGE:0.5:1:1440 \
                RRA:AVERAGE:0.5:1440:1 \
                RRA:MIN:0.5:1440:1 \
                RRA:MAX:0.5:1440:1

	echo "file created: $DBFILE"
fi
