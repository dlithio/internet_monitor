#!/bin/bash

flock -w 0 /tmp/internet_monitor_webserver.lock /home/pi/internet_monitor/serve_output.sh
