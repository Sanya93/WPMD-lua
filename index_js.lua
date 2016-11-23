local str={[[function sendQuery(){var login_v = document.getElementsByName('login')[0].value;var pass_v = document.getElementsByName('pass')[0].value;var data ='login=' + encodeURIComponent(login_v) + '&pass=' + encodeURIComponent(p
ass_v);var request = new XMLHttpRequest();request.open('POST', '/', true);request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');request.onreadystatechange = functi
on() {if (this.readyState != 4) return;alert(request.responseText);location = 'settings.html';}; request.send(data);}]]}

return str
