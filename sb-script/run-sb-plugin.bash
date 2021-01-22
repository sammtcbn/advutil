#!/bin/bash

source config

function clean_up ()
{
    rm -f ${TMP_FILE}
    echo exit
    exit
}

trap clean_up SIGHUP SIGINT SIGTERM

./sb_connect
sleep 1

./sb_heartbeat
sleep 1

./sb_capability
sleep 1

#./sb_capability
#sleep 1

while true; do
    ./sb_autoreport_data
    ./sb_livereport_data
    sleep ${REPORT_INTERVAL}
done

./sb_connect

echo bye
