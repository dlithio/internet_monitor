#!/bin/bash

DIR=/home/pi/internet_monitor

echo '<link rel="stylesheet" href="base-min.css">' > $DIR/output/index.html
echo '<meta name="viewport" content="width=device-width, initial-scale=1">' >> $DIR/output/index.html
echo '<div class="pure-g"><div class="pure-u-3-3"><pre>' >> $DIR/output/index.html
if [[ $1 == "1" ]]
then
  date -d @$(tail -n 1 $DIR/data/8.8.8.8.dropped | cut -d / -f 1) >> $DIR/output/index.html
else
  date -d @$(tail -n 1 $DIR/data/1.1.1.1.dropped | cut -d / -f 1) >> $DIR/output/index.html
fi
echo ""

tail -n 7 $DIR/data/8.8.8.8.summary | cut -d/ -f 2- >> $DIR/output/index.html
echo "" >> $DIR/output/index.html

tail -n 7 $DIR/data/1.1.1.1.summary | cut -d/ -f 2- >> $DIR/output/index.html
echo "" >> $DIR/output/index.html

tail -n 7 $DIR/data/8.8.8.8.dropped | cut -d/ -f 2- >> $DIR/output/index.html
echo "" >> $DIR/output/index.html

tail -n 7 $DIR/data/1.1.1.1.dropped | cut -d/ -f 2- >> $DIR/output/index.html
echo "</pre></div></div>" >> $DIR/output/index.html
