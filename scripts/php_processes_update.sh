#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/php_processes.rrd

PROCESSES=`ps ax | grep php-fpm | grep -v "grep" | wc -l`

rrdtool update $DBFILE N:$PROCESSES
