#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/apache_processes.rrd

PROCESSES=`ps --no-headers -C httpd.bin | wc -l`

rrdtool update $DBFILE N:$PROCESSES
