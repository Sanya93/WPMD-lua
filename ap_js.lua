local str={[[function getConfig(){var request = new XMLHttpRequest();request.open('GET', 'apdata', true);request.onreadystatechange = function() {if (this.readyState != 4) return;var data=JSON.parse(reque
st.responseText);document.getElementById('apname').value=data['APName'];document.getElementById('pass').value=data['APPass'];document.getElementById('ecrypt').value=data['APAuth'];document.getElementById('hide').checked
=data['APHiden'];};request.send();};function sendConfig(){var apname = document.getElementById('apname').value;var pass = document.getElementById('pass').value;var ecr = document.getElementById('ecrypt').value;var hide 
= (~~document.getElementById('hide').checked).toString();var data ='APName=' + encodeURIComponent(apname) + '&APPass=' + encodeURIComponent(pass) +'&APAuth=' + encodeURIComponent(ecr) +'&APHiden=' + encodeURIComponent(h
ide);var request = new XMLHttpRequest();request.open('POST', 'ap.html', true);request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');request.onreadystatechange = function() {if (thi
s.readyState != 4) return;alert(request.responseText);};request.send(data);return false;} window.onload = setTimeout(function() {getConfig();},1000);]]}

return str
