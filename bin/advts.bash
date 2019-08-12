#!/bin/bash
# https://github.com/sammtcbn/advutil
# Written by sammtcbn 2019.8.12
ME=$(basename $0)

function usage() {
    echo "Usage: ${ME} [milliseconds since Epoch]"
    exit 1
}

advts=${1}

if [ -z "${advts}" ]; then
    usage
fi

# remove last 3 characters (milliseconds)
newts="$(echo $advts | sed 's/...$//g')"

LANG="en_US" date --date @$newts
