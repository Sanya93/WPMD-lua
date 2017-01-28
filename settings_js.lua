local str={[[var tabCount = 6; var links=['di.html','auth.html','ap.html','sta.html','rcv.html','control.html'];function SelectTab(idx) {var f = document.getElementById('frame');for (var i = 1; i <= tabCount; i++) {var mark = docume
nt.getElementById('mark' + i);if (idx != i) {mark.setAttribute('class','');}else {mark.setAttribute('class','S-li');f.setAttribute('src',links[idx-1]);}};}]]}

return str
