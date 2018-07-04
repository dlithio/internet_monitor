#!/bin/bash

cd /home/pi/internet_monitor/data 

tar -cf ../archive/1.1.1.1.summary.`date +%Y%m%d`.tar.gz -z 1.1.1.1.summary
tar -czf ../archive/1.1.1.1.dropped.`date +%Y%m%d`.tar.gz 1.1.1.1.dropped
tar -czf ../archive/1.1.1.1.times.`date +%Y%m%d`.tar.gz 1.1.1.1.times
tar -czf ../archive/1.1.1.1.raw.`date +%Y%m%d`.tar.gz 1.1.1.1.raw
tar -czf ../archive/8.8.8.8.summary.`date +%Y%m%d`.tar.gz 8.8.8.8.summary
tar -czf ../archive/8.8.8.8.dropped.`date +%Y%m%d`.tar.gz 8.8.8.8.dropped
tar -czf ../archive/8.8.8.8.times.`date +%Y%m%d`.tar.gz 8.8.8.8.times
tar -czf ../archive/8.8.8.8.raw.`date +%Y%m%d`.tar.gz 8.8.8.8.raw
rm -f /home/pi/internet_monitor/data/*

