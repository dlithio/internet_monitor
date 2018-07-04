#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/../scripts

./custom_ping.sh 8.8.8.8 && \\ 
./make_output.sh 1 && \\
./custom_ping.sh 1.1.1.1 && \\
./make_output.sh 2

