#!/bin/bash

ALL=(
Grafana Node-RED device-modbus-master device-opcua-client DemoPlugin support-i-alarm device-net-monitor device-process-monitor device-susi-control DBMService e2i-edge-webconsole MQTTBroker
)

for i in "${ALL[@]}";
do
    if [ -d "/usr/local/EdgeSense/$i" ]; then

        echo "uninstall /usr/local/EdgeSense/$i ..."

        cd /usr/local/EdgeSense/$i

        if [ -f "./uninstall.bash" ]; then
            ./uninstall.bash
        fi
    fi
done
