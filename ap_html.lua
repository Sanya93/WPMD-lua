local str={[[<!DOCTYPE html><html><head><link rel="stylesheet" type="text/css" href="frame.css"></head><body><form onsubmit="return sendConfig();" onreset="getConfig()"><table><caption>Access point</caption><tr><td>AP name</td><td><
input type="text" id="apname"/></td></tr><tr><td>Encryption type</td><td><select id="ecrypt"><option value="0">None</option><option value="1">WPA</option><option selected value="2">WPA-2</option></select></td></tr><tr><
td>Password</td><td><input type="password" id="pass"></td></tr><tr><td>Hide SSID?</td><td><input type="checkbox" checked  id="hide"></td></tr><tr><td><input type="submit" value="Save"></td><td><input type="reset" value=
"Cancel"></td></tr></table></form><script src="ap.js"></script></body></html>]]}

return str
