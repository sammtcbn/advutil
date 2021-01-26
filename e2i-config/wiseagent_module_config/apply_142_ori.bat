cd %~dp0

net stop SAWatchdog
net stop WISEAgentService

copy /Y module_config_1.4.2_ori.xml "C:\Program Files (x86)\Advantech\WISE-Agent\module\module_config.xml"

net start WISEAgentService
net start SAWatchdog
