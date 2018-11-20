#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/innodb_bp_fill.rrd

ONE_HOUR_AGO=$(($NOW-3600))
THREE_HOUR_AGO=$(($NOW-10800))
SIX_HOUR_AGO=$(($NOW-21600))
TWELVE_HOUR_AGO=$(($NOW-43200))
ONE_DAY_AGO=$(($NOW-86400))
TWO_DAY_AGO=$(($NOW-172800))
THREE_DAY_AGO=$(($NOW-259200))
SEVEN_DAY_AGO=$(($NOW-604800))

rrdtool graph $IMGDIR/innodb_bp_fill_one_hour.png -s $ONE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 1 hour)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

					
rrdtool graph $IMGDIR/innodb_bp_fill_three_hour.png -s $THREE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 3 hours)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

rrdtool graph $IMGDIR/innodb_bp_fill_six_hour.png -s $SIX_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 6 hours)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

rrdtool graph $IMGDIR/innodb_bp_fill_twelve_hour.png -s $TWELVE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 12 hours)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000
					
rrdtool graph $IMGDIR/innodb_bp_fill_one_day.png -s $ONE_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 24 hours)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

rrdtool graph $IMGDIR/innodb_bp_fill_two_day.png -s $TWO_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last two days)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

rrdtool graph $IMGDIR/innodb_bp_fill_three_day.png -s $THREE_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last three days)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

rrdtool graph $IMGDIR/innodb_bp_fill_seven_day.png -s $SEVEN_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last seven days)" \
        -v Bytes -t "InnoDB Buffer Pool Utilization" \
		        DEF:used=$DBFILE:used:AVERAGE AREA:used#ff8080:"Space filled" \
			        DEF:avail=$DBFILE:avail:AVERAGE STACK:avail#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE LINE1:used2#ff0000

