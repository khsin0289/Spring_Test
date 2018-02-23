/**
 * 	ACCESS TERMS JAVASCRIPT
 */

var agrCheck1 = document.getElementById('agr-ck1');
var agrCheck2 = document.getElementById('agr-ck2');
var nonCheckBtn = document.getElementById('nonCheck');
var nextBtn = document.getElementById('checkNext');
var nextSubjectBtn = document.getElementById('checkNext-subject');
var checkURL1 = document.getElementById('check-url1');
var checkURL2 = document.getElementById('check-url2');

window.onload = function() {
	if(agrCheck1 !== null) document.getElementById('agr-ck1').removeAttribute('checked');
	if(agrCheck1 !== null) document.getElementById('agr-ck2').removeAttribute('checked');
	if(agrCheck1 !== null) document.getElementById('nonCheck').style.display = 'block';
	if(agrCheck1 !== null) document.getElementById('checkNext').style.display = 'none';
}

	
// 1번 체크박스 이벤트
if(agrCheck1 !== null) {
	agrCheck1.addEventListener('click', function() {
// 				console.log("check1 click");
		
		if (agrCheck1.getAttribute('checked') !== null) {
			agrCheck1.removeAttribute('checked');
			checkURL1.style.background = "url(/obelab/resources/image/agree/agree_de.png) left top no-repeat";
			nonCheckBtn.style.display = 'block';
			nextBtn.style.display = 'none';
// 					if (nextBtn.classList.contains('non-check')) {
// 						nextBtn.style.display = 'block';
// 						nextBtn.style.display = 'none';
// 					} 
		} else {
			agrCheck1.setAttribute('checked', '');
			checkURL1.style.background = "url(/obelab/resources/image/agree/agree_se.png) left top no-repeat";
			if (agrCheck2.getAttribute('checked') !== null) {
				nonCheckBtn.style.display = 'none';
				nextBtn.style.display = 'block';
			}
		}
// 				console.log(agrCheck1.getAttribute('checked'));
// 				console.log(agrCheck2.getAttribute('checked'));
	});
}

// 2번 체크박스 이벤트
if(agrCheck2 !== null) {
	agrCheck2.addEventListener('click', function() {
//	console.log("check2 click");
		if(agrCheck2.getAttribute('checked') !== null) {
			agrCheck2.removeAttribute('checked');
			checkURL2.style.background = "url(/obelab/resources/image/agree/agree_de.png) left top no-repeat";
			nonCheckBtn.style.display = 'block';
			nextBtn.style.display = 'none';
		} else {
			agrCheck2.setAttribute('checked', '');
			checkURL2.style.background = "url(/obelab/resources/image/agree/agree_se.png) left top no-repeat";
			if(agrCheck1.getAttribute('checked') !== null) {
				nonCheckBtn.style.display = 'none';
				nextBtn.style.display = 'block';
			}
		}
// 				console.log(agrCheck1.getAttribute('checked'));
// 				console.log(agrCheck2.getAttribute('checked'));
	});
}

// Next 버튼 이벤트
if(nextBtn !== null) {
	nextBtn.addEventListener('click', function() {
//	alert("click Next");
//	console.log(nextBtn.getAttribute('data-toggle'));
		if(nextBtn.getAttribute('data-toggle') === null) {
			if(agrCheck1.getAttribute('checked') !== null && agrCheck2.getAttribute('checked') !== null) {
				location.href="/obelab/login/register";
			}
		}
	});
}

if(document.getElementById('userClick') !== null) {
	document.getElementById('userClick').addEventListener('click', function() {
//		alert("AA");
		document.getElementById('agr-ck1').removeAttribute('checked');
		document.getElementById('agr-ck2').removeAttribute('checked');
		document.getElementById('check-url1').style.background = 'url(/obelab/resources/image/agree/agree_de.png) left top no-repeat';
		document.getElementById('check-url2').style.background = 'url(/obelab/resources/image/agree/agree_de.png) left top no-repeat';
		document.getElementById('nonCheck').style.display = 'block';
		document.getElementById('checkNext').style.display = 'none';
		
		/*
		 * NEW PATIENT CHECK BOX EVENT
		 * 
		var prior = document.getElementsByName("prior");
		var priorLength = prior.length;
		
//		console.log(priorLength);
		if(prior[0].checked === false) {
			prior[0].checked = true;
			prior[0].style.backgroundColor = '#009edb';
			prior[0].style.color = '#ffffff';
			prior[0].style.boxShadow = 'none';
		}
		prior[0].addEventListener('click', function() {
//				console.log(prior[0].checked);
			if(prior[0].checked === false) {
				prior[0].checked = true;
				prior[0].style.backgroundColor = '#009edb';
				prior[0].style.color = '#ffffff';
				prior[0].style.boxShadow = 'none';
			}
		});
		for(var i=1; i<priorLength; i++) {
			prior[i].checked = false;
			console.log(prior[i].value);
			console.log(prior[i].checked);
		}
		
		var sex = document.getElementsByName("sex");
		var sexLength = sex.length;
		if(sex[0].checked === false) {
			sex[0].checked = true;
			sex[0].style.backgroundColor = '#009edb';
			sex[0].style.color = '#ffffff';
			sex[0].style.boxShadow = 'none';
		}
		for(var i=1; i<sexLength; i++) {
			sex[i].checked = false;
			console.log(sex[i].value);
			console.log(sex[i].checked);
		}
		var race = document.getElementsByName("race");
		var raceLength = race.length;
		if(race[0].checked === false) {
			race[0].checked = true;
			race[0].style.backgroundColor = '#009edb';
			race[0].style.color = '#ffffff';
			race[0].style.boxShadow = 'none';
		}
		for(var i=1; i<raceLength; i++) {
			race[i].checked = false;
			console.log(race[i].value);
			console.log(race[i].checked);
		}
		var others = document.getElementsByName("others");
		var othersLength = others.length;
		for(var i=0; i<othersLength; i++) {
			others[i].checked = false;
			console.log(others[i].value);
			console.log(others[i].checked);
		}
		*/
		
		/*
		 * NEW PATIENT SELECT BOX EVENT
		 * 
		var exercise = document.getElementsByName("exercise");
		if(exercise[0].checked === false) {
			exercise[0].checked = true;
		}
		var coffee = document.getElementsByName("coffee");
		if(coffee[0].checked === false) {
			coffee[0].checked = true;
		}
		var alcohol = document.getElementsByName("alcohol");
		if(alcohol[0].checked === false) {
			alcohol[0].checked = true;
		}
		var smoking = document.getElementsByName("smoking");
		if(smoking[0].checked === false) {
			smoking[0].checked = true;
		}
		 */
		
	});
	
}
