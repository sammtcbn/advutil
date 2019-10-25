#!/bin/bash
# https://github.com/sammtcbn/advutil
# Written by sammtcbn 2019.1.10
apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa
apt -y update
apt -y install mosquitto
apt -y install mosquitto-clients

apt -y install nodejs
apt -y install npm
