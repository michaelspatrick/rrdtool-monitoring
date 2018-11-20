#!/bin/bash

source /etc/rrdtoolgraphs.conf

DBFILE=$DBDIR/swap.rrd

ONE_HOUR_AGO=$(($NOW-3600))
THREE_HOUR_AGO=$(($NOW-10800))
SIX_HOUR_AGO=$(($NOW-21600))
TWELVE_HOUR_AGO=$(($NOW-43200))
ONE_DAY_AGO=$(($NOW-86400))
TWO_DAY_AGO=$(($NOW-172800))
THREE_DAY_AGO=$(($NOW-259200))
SEVEN_DAY_AGO=$(($NOW-604800))

rrdtool graph $IMGDIR/swap_one_hour.png -s $ONE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 1 hour)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

					
rrdtool graph $IMGDIR/swap_three_hour.png -s $THREE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 3 hours)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

rrdtool graph $IMGDIR/swap_six_hour.png -s $SIX_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 6 hours)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

rrdtool graph $IMGDIR/swap_twelve_hour.png -s $TWELVE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 12 hours)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000
					
rrdtool graph $IMGDIR/swap_one_day.png -s $ONE_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last 24 hours)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

rrdtool graph $IMGDIR/swap_two_day.png -s $TWO_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last two days)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

rrdtool graph $IMGDIR/swap_three_day.png -s $THREE_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last three days)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

rrdtool graph $IMGDIR/swap_seven_day.png -s $SEVEN_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "$TITLE (last seven days)" \
        -v Gigabytes -t "Swap Usage" \
	        -l 0 -r \
		        DEF:used=$DBFILE:used:AVERAGE CDEF:usedgb=used,1024,* AREA:usedgb#ff8080:"Space used" \
			        DEF:avail=$DBFILE:avail:AVERAGE CDEF:totalgb=avail,1024,* STACK:totalgb#80ff80:"Space free" \
				        DEF:used2=$DBFILE:used:AVERAGE CDEF:usedgb2=used,1024,* LINE1:usedgb#ff0000

