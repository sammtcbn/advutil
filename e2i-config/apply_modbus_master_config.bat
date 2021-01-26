cd %~dp0

net stop device-modbus-service
net stop device-modbus-protocol

robocopy /E "modbus_master_config\config" "C:\Program Files (x86)\Advantech\E2I\Plugin\modbus-master\device-modbus-service\config"

net start device-modbus-protocol
net start device-modbus-service
