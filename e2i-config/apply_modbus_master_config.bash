srcfolder=modbus_master_config/config
destfolder=/usr/local/EdgeSense/device-modbus-master/device-modbus-service/config

systemctl stop device-modbus-service.service
systemctl stop device-modbus-protocol.service

cp -rf ${srcfolder}/* ${destfolder}

systemctl start device-modbus-protocol.service
systemctl start device-modbus-service.service

echo "done"

