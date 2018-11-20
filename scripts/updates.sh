#!/bin/bash
/var/db/rrdtool/scripts/load_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/loadavg_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/processes_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/varnish_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_processes_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_connections_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/php_processes_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/net_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/mem_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/mem2_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/disk_update1.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/innodb_bp_fill_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/swap_update.sh > /dev/null 2>> /var/db/rrdtool/error_log
