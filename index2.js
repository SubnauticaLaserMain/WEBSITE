var password = "1422160909"

function passcheck() {

if(document.getElementById('pass2').value != password) {
alert('Wrong Password, Try Again.');
return false;
}
if(document.getElementById('pass2').value == password) {
alert('Correct Password. Click OK to enter Script.');
}}