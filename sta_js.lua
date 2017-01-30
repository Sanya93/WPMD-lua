local str={[[function getConfig(){var request = new XMLHttpRequest();request.open('GET', 'stadata', true);request.onreadystatechange = function() {if (this.readyState != 4) return;var data=JSON.parse(request.responseText);document.g
etElementById('apname').value=data['STAName'];document.getElementById('pass').value=data['STAPass'];document.getElementById('ip').value=data['STAIP'];document.getElementById('mask').value=data['STAMask'];document.getEle
mentById('gate').value=data['STAGate'];};request.send();};function sendConfig(){var apname = document.getElementById('apname').value;var pass = document.getElementById('pass').value;var ip = document.getElementById('ip'
).value;var mask = document.getElementById('mask').value;var gate = document.getElementById('gate').value;var data ='STAName=' + encodeURIComponent(apname) + '&STAPass=' + encodeURIComponent(pass) +'&STAIP=' + encodeURI
Component(ip) +'&STAMask=' + encodeURIComponent(mask) +'&STAGate=' + encodeURIComponent(gate);var request = new XMLHttpRequest();request.open('POST', 'sta.html', true);request.setRequestHeader('Content-Type', 'applicati
on/x-www-form-urlencoded; charset=UTF-8');request.onreadystatechange = function() {if (this.readyState != 4) return;alert(request.responseText);};request.send(data);return false;} window.onload = setTimeout(function() {
getConfig();},1000);]]}

return str
