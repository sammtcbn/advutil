@echo off
set currdir=%~dp0
cd "%currdir%"
@rem echo %currdir%

setlocal enableextensions disabledelayedexpansion

if exist "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config.xml" (

  if exist "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config_ori.xml" (
      del /f /q "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config_ori.xml"
  )

  copy /Y "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config.xml" "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config_ori.xml"
  copy /Y "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config_def.xml" "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config.xml"

  for /f "tokens=1" %%v in ('
     xmlstarlet sel -t -m "//XMLConfigSettings/BaseSettings/CredentialURL" -v . -n "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config_ori.xml"
  ') do (
     echo %%v
	 xmlstarlet edit -L --update "//XMLConfigSettings/BaseSettings/CredentialURL" --value %%v "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config.xml"
  )

  for /f "tokens=1" %%v in ('
     xmlstarlet sel -t -m "//XMLConfigSettings/BaseSettings/IoTKey" -v . -n "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config_ori.xml"
  ') do (
     echo %%v
	 xmlstarlet edit -L --update "//XMLConfigSettings/BaseSettings/IoTKey" --value %%v "C:\Program Files (x86)\Advantech\WISE-Agent\agent_config.xml"
  )

)

echo bye
pause