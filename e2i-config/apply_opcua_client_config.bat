cd %~dp0

net stop device-opcua-client

xcopy /Y opcua_client_config\config\opcua-client.json "C:\Program Files (x86)\Advantech\E2I\Plugin\opcua-client\config"

net start device-opcua-client
