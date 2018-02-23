/**
 *  CONTROL CHECK BOX AND SELECT BOX of PATIENT FORM
 */

// CHECKED VALUE IN CHECK BOX BY NAME PRIOR - NONE

//var prior = document.getElementsByName("prior");
//var chklength = prior.length;
//console.log(chklength);
//prior[0].addEventListener('click', function() {
//// 			console.log(prior[0].checked);
//	if(prior[0].checked === false) {
//		prior[0].checked = true;
//		prior[0].style.backgroundColor = '#009edb';
//		prior[0].style.color = '#ffffff';
//		prior[0].style.boxShadow = 'none';
//// 				console.log(prior[0].checked);
//		for(var i=1; i<chklength; i++) {
//			prior[i].checked = false;
//			console.log(prior[i].value);
//			console.log(prior[i].checked);
//		}
//	}
//});
//prior[0]




// CHECKED VALUE IN SELECT BOX BY NAME SEX
var okBtn = document.getElementById('newPatientOk');
// 		okBtn.addEventListener('click', function() {
// 			alert("");
// 			var chk_arr =  document.getElementsByName("others");
// 			console.log(chk_arr);
// 			var chklength = chk_arr.length;             
// 			console.log(chklength);

// 			for(k=0;k< chklength;k++)
// 			{
// 			    chk_arr[k].checked = false;
// 			} 
// 		});

// CHECKED VALUE IN SELECT BOX BY NAME SEX
//okBtn.addEventListener('click', function() {
//	alert("sex");
//	
//	var chk_arr =  document.getElementsByName("sex");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 			    chk_arr[k].checked = false;
//	} 
//});

// CHECKED VALUE IN SELECT BOX BY NAME RACE
//okBtn.addEventListener('click', function() {
//	alert("race");
//	
//	var chk_arr =  document.getElementsByName("race");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 			    chk_arr[k].checked = false;
//	} 
//});

// CHECKED VALUE IN SELECT BOX BY NAME EXERCISE
//okBtn.addEventListener('click', function() {
//	alert("exercise");
//	
//	var chk_arr =  document.getElementsByName("exercise");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 			    chk_arr[k].checked = false;
//	} 
//});

// CHECKED VALUE IN SELECT BOX BY NAME COFFEE
//okBtn.addEventListener('click', function() {
//	alert("coffee");
//	
//	var chk_arr =  document.getElementsByName("coffee");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 			    chk_arr[k].checked = false;
//	} 
//});

// CHECKED VALUE IN SELECT BOX BY NAME ALCOHOL
//okBtn.addEventListener('click', function() {
//	alert("alcohol");
//	
//	var chk_arr =  document.getElementsByName("alcohol");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 			    chk_arr[k].checked = false;
//	} 
//});

// CHECKED VALUE IN SELECT BOX BY NAME SMOKING
//okBtn.addEventListener('click', function() {
//	alert("smoking");
//	
//	var chk_arr =  document.getElementsByName("smoking");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 				chk_arr[k].checked = false;
//	} 
//});



//var chklength = prior.length;
//var prior_array = [];
//for(var i=1; i<chklength; i++) {
//	prior[i].addEventListener('click', function() {
//		console.log(prior[i]);
// 				console.log(prior[i].checked);
// 				temp_array.push(prior[i].value);
//	});
//}
//
// 		var prior_1 = prior[1];
// 		console.log(prior);
// 		prior_1.addEventListener('click', function() {
// 			var chklength = prior.length;
// 			console.log(chklength);
// 			var temp_length = [];
	
// 			for(var i=0; i<chklength; i++) {
// 				if(prior[i].checked === true) {
// 					temp_length.push(prior[i].value);
// 				}
// 			}
// 			if(temp_length.length === 0) {
// 				prior[0].checked = true;
// 			} else {
// 				prior[0].checked = false;
// 			}
// 		});


//okBtn.addEventListener('click', function() {
//	alert("prior");
//	var chk_arr =  document.getElementsByName("prior");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 				chk_arr[k].checked = false;
//	} 
//});

// CHECKED VALUE IN CHECK BOX BY NAME OTHERS
//okBtn.addEventListener('click', function() {
//	alert("others");
//	
//	var chk_arr =  document.getElementsByName("others");
//	console.log(chk_arr);
//	var chklength = chk_arr.length;             
//	console.log(chklength);
//
//	for(k=0;k< chklength; k++)
//	{
//		if(chk_arr[k].checked === true) {
//			console.log(chk_arr[k].value);
//		}
//// 			    chk_arr[k].checked = false;
//	} 
//});
