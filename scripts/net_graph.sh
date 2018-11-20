#!/bin/bash

source /etc/rrdtoolgraphs.conf

ONE_HOUR_AGO=$(($NOW-3600))
THREE_HOUR_AGO=$(($NOW-10800))
SIX_HOUR_AGO=$(($NOW-21600))
TWELVE_HOUR_AGO=$(($NOW-43200))
ONE_DAY_AGO=$(($NOW-86400))
TWO_DAY_AGO=$(($NOW-172800))
THREE_DAY_AGO=$(($NOW-259200))
SEVEN_DAY_AGO=$(($NOW-604800))

rrdtool graph $IMGDIR/net_one_hour.png -s $ONE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last 1 hour)"\
	-v Kbps \
	-b 1024 \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"MAX. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"MAX. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_three_hour.png -s $THREE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last 3 hours)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_six_hour.png -s $SIX_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last 6 hours)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_twelve_hour.png -s $TWELVE_HOUR_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last 12 hours)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_one_day.png -s $ONE_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last 24 hours)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_two_day.png -s $TWO_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last two days)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_three_day.png -s $THREE_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last three days)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

rrdtool graph $IMGDIR/net_seven_day.png -s $SEVEN_DAY_AGO -a PNG -h $GRAPHHEIGHT -w $GRAPHWIDTH -t "Network usage (last seven days)"\
	-v Kbps \
	--rigid \
	DEF:output=$DBDIR/net.rrd:out:AVERAGE \
	DEF:input=$DBDIR/net.rrd:in:AVERAGE \
       	CDEF:kbpsout=output \
	CDEF:kbpsin=input \
	LINE2:kbpsin#8080ff:"Input " \
	GPRINT:input:AVERAGE:"AVG. %.2lf%sB/s" \
	GPRINT:input:MAX:"Max. %.2lf%sB/s" \
	GPRINT:input:LAST:"CUR. %.2lf%sB/s\n" \
	LINE2:kbpsout#000000:"Output" \
	GPRINT:output:AVERAGE:"AVG. %.2lf%sB/s" \
        GPRINT:output:MAX:"Max. %.2lf%sB/s" \
	GPRINT:output:LAST:"CUR. %.2lf%sB/s\n" \
	COMMENT:"\n" \
	COMMENT:"$5\n" 

