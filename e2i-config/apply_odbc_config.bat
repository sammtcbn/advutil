cd %~dp0

net stop device-odbc

rmdir /s/q "C:\Program Files (x86)\Advantech\E2I\Plugin\odbc\ODBC_Rec"
rmdir /s/q "C:\Program Files (x86)\Advantech\E2I\Plugin\odbc\logs"
copy /Y odbc_config\ODBC_Handler.ini "C:\Program Files (x86)\Advantech\E2I\Plugin\odbc"
mkdir C:\txt
copy /Y odbc_data\data.csv C:\txt

net start device-odbc
