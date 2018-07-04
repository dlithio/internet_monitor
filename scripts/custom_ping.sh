#/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/../data/

echo "////////////////////"`date +%s` >> $1.raw
ping -c 11 -i 3.0 -w 30 -D $1 | \
	tee -a $1.raw | \
	tr -d '[]' | \
	awk -v current_time=`date +%s` \
	    -f $DIR/parse_ping.awk
