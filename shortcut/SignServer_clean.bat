echo remove \\eossfs\AutoSign\SignFiles\Signed\%UserName%\AdvIns
echo remove \\eossfs\AutoSign\SignFiles\NonSigned\%UserName%\AdvIns

pause 

del \\eossfs\AutoSign\SignFiles\Signed\%UserName%\advanceInstallFailLog.txt /F/Q

rmdir \\eossfs\AutoSign\SignFiles\NonSigned\%UserName%\AdvIns /Q/S
mkdir \\eossfs\AutoSign\SignFiles\NonSigned\%UserName%\AdvIns

rmdir \\eossfs\AutoSign\SignFiles\Signed\%UserName%\AdvIns /Q/S
mkdir \\eossfs\AutoSign\SignFiles\Signed\%UserName%\AdvIns

pause