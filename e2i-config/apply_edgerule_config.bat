cd %~dp0

net stop APIGateway

copy /Y edgerule_config\edgeAlarm_config.json "C:\Program Files (x86)\Advantech\E2I\e2i-edge-webconsole\server\worker\APIGateway\config\edgeAlarm"

net start APIGateway
