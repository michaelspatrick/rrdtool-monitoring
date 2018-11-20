#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/processes.rrd

PROCESSES=`ps ax | grep -c :`

rrdtool update $DBFILE N:$PROCESSES
