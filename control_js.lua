local str={[[function sendCommand(command) {var data = "command="+command;var request = new XMLHttpRequest();request.open('POST', 'control.html', true);request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; cha
rset=UTF-8');request.onreadystatechange = function() {if (this.readyState != 4) return; alert(request.responseText);};request.send(data);}function sendCommand(command) {var data = "command="+command;var request = new XMLHttpRequest();request.open('POST', 'control.html', true);request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; cha
rset=UTF-8');request.onreadystatechange = function() {if (this.readyState != 4) return;if (request.responseText=="on#") {document.getElementById('state').innerHTML="Switched on";}else {document.getElementById('state').i
nnerHTML="Switched off";}};request.send(data);};window.onload = setTimeout(function() {sendCommand("upd");},1000);]]}

return str
