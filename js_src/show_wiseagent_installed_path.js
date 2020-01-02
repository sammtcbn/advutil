/*
Notice: need to npm install regedit
*/
var regedit = require('regedit')
var key = "HKLM\\SOFTWARE\\WOW6432Node\\Advantech\\WISE-Agent";

regedit.list(key).on('data', function(entry) {
    console.log(entry.data.values.Path.value);
})

/* Result on Windows 10

>node show_wiseagent_installed_path.js
C:\Program Files (x86)\Advantech\WISE-Agent\

*/