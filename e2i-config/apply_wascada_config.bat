cd %~dp0

net stop device-wascada

xcopy /Y wascada_config\WASCADAHandler.json "C:\Program Files (x86)\Advantech\E2I\Plugin\wascada"

net start device-wascada
