#!/bin/bash
# https://github.com/sammtcbn/advutil
# Written by sammtcbn 2019.1.10
apt -y update
apt -y dist-upgrade

apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa
apt -y install mosquitto
apt -y install mosquitto-clients

apt -y install nodejs
apt -y install npm
