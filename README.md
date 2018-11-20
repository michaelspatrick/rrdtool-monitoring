# rrdtool-monitoring
Collection of scripts to monitor Operating System, Apache, Varnish, and MySQL metrics.

Modified from scripts taken from: https://www.novell.com/coolsolutions/tools/15964.html

New metrics were added as well as support for Apache, Varnish, and MySQL.  The metrics are very basic for now and need more work.  I have also not created an installer for my version as of yet.

I put these additional scripts in place because I didn't want the expense of a true monitoring server, but I still wanted to see some performance metrics.

The scripts use a number of sources for metrics, including sar (from the sysstat package), Apache mod_status, processes in the process list, /proc info, and more.  These scripts place little to no impact on the server but are much better than nothing. There are a lot more metrics for Apache and MySQL especially that I want to monitor and will add to this repo over time.  My goal was not to reproduce a full monitoring system, but instead to look at some specific metrics I want to track.

For my usage, the server has relatively low usage but was having periodic spikes which eventually lead to it crashing.  I installed sar to track metrics, but quickly decided I would like some of the data graphed out to look for trends more easily.  I am a command-line kind of guy, but the graphs make it much easier to see the trends.

Keep in mind, this repo is placed here mostly for my own use, but it is available if others find it useful.  However, I offer NO support for these utilities as I have a very busy schedule.  If I get more time in the future, I will be happy to make some improvements.

Use at your own risk!
