@echo off

@echo nginx
sc query nginx | findstr STATE || @echo(        not found

@echo APIGateway
sc query APIGateway | findstr STATE || @echo(        not found

@echo device-modbus-service
sc query device-modbus-service | findstr STATE || @echo(        not found

@echo device-modbus-protocol
sc query device-modbus-protocol | findstr STATE || @echo(        not found

@echo device-opcua-client
sc query device-opcua-client | findstr STATE || @echo(        not found

@echo device-odbc
sc query device-odbc | findstr STATE || @echo(        not found

@echo device-wascada
sc query device-wascada | findstr STATE || @echo(        not found

@echo device-net-monitor
sc query device-net-monitor | findstr STATE || @echo(        not found

@echo device-process-monitor
sc query device-process-monitor | findstr STATE || @echo(        not found

@echo DBMService 
sc query DBMService | findstr STATE || @echo(        not found

@echo InfluxDB 
sc query InfluxDB | findstr STATE || @echo(        not found

@echo grafana 
sc query grafana | findstr STATE || @echo(        not found

@echo NodeRed 
sc query NodeRed | findstr STATE || @echo(        not found

@echo support-i-alarm
sc query support-i-alarm | findstr STATE || @echo(        not found

pause