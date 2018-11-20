#!/bin/bash
/var/db/rrdtool/scripts/net_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/load_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/loadavg_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/processes_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/varnish_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_processes_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_connections_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_requests_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/php_processes_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/mem_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/mem2_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/disk_graph1.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/innodb_bp_fill_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/swap_graph.sh > /dev/null 2>> /var/db/rrdtool/error_log
