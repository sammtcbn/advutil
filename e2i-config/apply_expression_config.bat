cd %~dp0

net stop APIGateway

copy /Y expression_config\expression_config.json "C:\Program Files (x86)\Advantech\E2I\e2i-edge-webconsole\server\worker\APIGateway\config\expression"

net start APIGateway
