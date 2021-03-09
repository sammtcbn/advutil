@echo on

@rem for iEdge 1.0.1 to 1.2.1
set mongodpath="C:\Program Files\Advantech\E2I_Server\database\MongoDB\4.2.1\bin\mongod.exe"
if exist %mongodpath% (
    netsh advfirewall firewall add rule name="MongoDB allowing mongod" dir=in action=allow program=%mongodpath% enable=yes
    goto :EOF
)

netsh advfirewall firewall add rule name="MongoDB allow port 27017" dir=in action=allow protocol=TCP localport=27017

:EOF
   