local str={[[<!DOCTYPE html><html><head><link rel="stylesheet" type="text/css" href="frame.css"></head><body><table><tr><caption>Power control</caption></tr><tr><td><div class="cont"><span>Computer current state</span><span id='stat
e'> Switched on</span><input type="button" value="Refresh" onclick='sendCommand("upd");'>   </div></td><td><div class="b_cont"><input type="button" value="Power" onclick='sendCommand("pwr");'><input type="button"value="
Emergency power" onclick='sendCommand("hpwr");'><input type="button" value="Reset" onclick='sendCommand("rst");'></div></td></tr></table><script src="control.js"></script></body></html>]]}

return str
