#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/innodb_bp_fill.rrd

# space_used:space_available

#USAGE=`df -k | grep '^/dev/xvda1 ' | awk '{ print $3":"$4 }'`

USED=`/opt/bitnami/mysql/bin/mysql -u$MySQL_USER -p$MySQL_PASS -S $MySQL_SOCK -sNe "SHOW GLOBAL STATUS LIKE 'Innodb_buffer_pool_bytes_data'" | awk '{print $2}'`
PAGESIZE=`/opt/bitnami/mysql/bin/mysql -u$MySQL_USER -p$MySQL_PASS -S $MySQL_SOCK -sNe "SHOW GLOBAL VARIABLES LIKE 'innodb_page_size'" | awk '{print $2}'`
PAGESFREE=`/opt/bitnami/mysql/bin/mysql -u$MySQL_USER -p$MySQL_PASS -S $MySQL_SOCK -sNe "SHOW GLOBAL STATUS LIKE 'Innodb_buffer_pool_pages_free'" | awk '{print $2}'`
AVAIL=`echo "$PAGESIZE * $PAGESFREE" | bc -l`
USAGE="$USED:$AVAIL"

echo $USAGE

rrdtool update $DBFILE N:$USAGE
