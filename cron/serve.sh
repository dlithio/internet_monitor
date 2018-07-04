#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

flock -w 0 /tmp/internet_monitor_webserver.lock $DIR/../scripts/serve_output.sh
