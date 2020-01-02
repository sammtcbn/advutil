/*
Notice: need to npm install regedit
*/
var regedit = require('regedit')
var key = "HKLM\\SOFTWARE\\WOW6432Node\\Advantech\\WISE-Agent";

regedit.list(key, function(err, result) {
    console.log(result);   
})

/* Result on Windows 10

>node show_wiseagent_registry.js
{
  'HKLM\\SOFTWARE\\WOW6432Node\\Advantech\\WISE-Agent': {
    values: { ServerIPAddress: [Object], Path: [Object], Version: [Object] }
  }
}

*/