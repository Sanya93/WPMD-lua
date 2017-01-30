local str={[[function getConfig(){var request = new XMLHttpRequest();request.open('GET', 'authdata', true);request.onreadystatechange = function() {if (this.readyState != 4) return;var data=JSON.parse(request.responseText);document.
getElementById('addr').value=data['STAIP'];document.getElementById('login').value=data['PageLogin'];document.getElementById('pass').value=data['PagePass'];};request.send();};function sendConfig(){var login = document.ge
tElementById('login').value;var pass = document.getElementById('pass').value;var data ='PageLogin=' + encodeURIComponent(login) + '&PagePass=' + encodeURIComponent(pass);var request = new XMLHttpRequest();request.open('
POST', 'auth.html', true);request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');request.onreadystatechange = function() {if (this.readyState != 4) return;alert(request.responseText
);};request.send(data);return false;} window.onload = setTimeout(function() {getConfig();},1000);]]}

return str
