local str={[[
<!DOCTYPE html><html><head><link rel="stylesheet" type="text/css" href="frame.css"></head><body><table><tr><caption>Power control</caption></tr><tr><td>Computer current state<br><span id='state'> Switched on</span><br><
input type="button" value="Refresh" onclick='sendCommand("upd");'>	</td><td><input type="button" value="Power" onclick='sendCommand("pwr");'><br><input type="button" value="Hard power" onclick='sendCommand("hpwr");'><b
r><input type="button" value="Reset" onclick='sendCommand("rst");'></td></tr></table><script src="control.js"></script></body></html>]]}

return str