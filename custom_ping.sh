#/bin/bash

cd /home/pi/internet_monitor/data/
echo "////////////////////"`date +%s` >> $1.raw
ping -c 11 -i 3.0 -w 30 -D $1 | \
	tee -a $1.raw | \
	tr -d '[]' | \
	awk -v current_time=`date +%s` \
	    -f /home/pi/internet_monitor/parse_ping.awk
