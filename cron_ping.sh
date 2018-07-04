#!/bin/bash

/home/pi/internet_monitor/custom_ping.sh 8.8.8.8 && \\ 
/home/pi/internet_monitor/make_output.sh 1 && \\
/home/pi/internet_monitor/custom_ping.sh 1.1.1.1 && \\
/home/pi/internet_monitor/make_output.sh 2
