net stop device-odbc
net stop device-modbus-service
net stop device-modbus-protocol
net stop device-opcua-client
net stop device-wascada
net stop support-i-alarm
net stop device-net-monitor
net stop device-process-monitor
net stop NodeRed
net stop APIGateway
net stop nginx
net stop SAWatchdog
net stop WISEAgentService
net stop mosquitto

del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\Plugin\odbc\logs\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\Plugin\odbc\ODBC_Rec\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\Plugin\opcua-client\logs\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\Plugin\wascada\logs\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\Plugin\i-alarm\logs\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\e2i-edge-webconsole\nginx\logs\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\E2I\e2i-edge-webconsole\server\worker\APIGateway\logs\*.*"
del /F/S/Q "C:\Program Files (x86)\Advantech\WISE-Agent\logs\*.*"