#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo adduser --disabled-login inet_mon
sudo cp -r $DIR/../internet_monitor /home/inet_mon
sudo chown -R inet_mon:inet_mon /home/inet_mon
sudo crontab -u inet_mon $DIR/cron/user.crontab

