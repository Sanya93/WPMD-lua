local str={[[function sendQuery(){var login_v = document.getElementsByName('login')[0].value;var pass_v = document.getElementsByName('pass')[0].value;var data ='login=' + encodeURIComponent(login_v) + '&pass=' + encodeURIComponent(p
ass_v);var request = new XMLHttpRequest();request.open('POST', '/', true);request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');request.onreadystatechange = functi
on() {if (this.readyState != 4) return;if (request.responseText == "ok") {location = 'settings.html';}else {document.getElementById('err').style.display='block';setTimeout(function() {documen
t.getElementById('err').style.display="none"}, 1000);}};request.send(data);}]]}

return str
