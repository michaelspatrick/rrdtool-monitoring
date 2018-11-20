#!/bin/bash
/var/db/rrdtool/scripts/net_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/load_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/loadavg_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/processes_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/varnish_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_processes_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_connections_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/apache_requests_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/php_processes_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/mem_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/mem2_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/disk_create1.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/innodb_bp_fill_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
/var/db/rrdtool/scripts/swap_create.sh > /dev/null 2>> /var/db/rrdtool/error_log
