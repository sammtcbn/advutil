#!/bin/bash
srcfolder=opcua_client_config/config
destfolder=/usr/local/EdgeSense/device-opcua-client/config

cp -rf ${srcfolder}/* ${destfolder}
systemctl restart device-opcua-client.service

echo "done"
