/**
 * Navi Background Change 
 * 		And
 * Non function Script
 */

// 이전 URL 정보
var referrer = document.referrer;
// 	alert(referrer);

// 현재 URL 정보
var link = document.location.href;
// 	alert(link);

var temp = new Array();
temp = link.split("/");
//console.log(temp[temp.length -1]);
var nowLink = temp[temp.length -1];
//	alert(nowLink);
//	console.log(nowLink);
	if(nowLink.indexOf('-') !== -1) {
		nowLink = nowLink.split('-')[0];
	}
// 	alert(nowLink);
//	console.log(nowLink);
// 	debugger;
var removeActive = document.getElementById("menu-top").children;
console.log(removeActive);
for(var i=0; i<removeActive.length; i++) {
	if(removeActive[i].childNodes[0].classList.contains('menu-top-active')) {
		removeActive[i].childNodes[0].classList.remove('menu-top-active');
		removeActive[i].childNodes[0].classList.remove('CR-B');
		removeActive[i].childNodes[0].classList.add('CR-R');
		console.log(removeActive[i].childNodes[0].innerText);
		break;
	}
}
for(var i=0; i<removeActive.length; i++) {
	if(removeActive[i].childNodes[0].innerText.toLowerCase() === nowLink) {
		removeActive[i].childNodes[0].classList.add('menu-top-active');
		removeActive[i].childNodes[0].classList.remove('CR-R');
		removeActive[i].childNodes[0].classList.add('CR-B');
		break;
	}
}
