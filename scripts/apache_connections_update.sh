#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/apache_connections.rrd

CONNECTIONS=`curl -s -u '$HTUSER:$HTPASS' $APACHE_STATUS_URL | grep "ConnsTotal" | awk '{print $2}'`

echo $CONNECTIONS

rrdtool update $DBFILE N:$CONNECTIONS
