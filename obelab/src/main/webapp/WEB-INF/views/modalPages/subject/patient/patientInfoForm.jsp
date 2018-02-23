<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="modal fade" id="patient-info">
			<div class="modal-dialog-high">
				<div class="modal-content">
					<div class="modal-body">
						<section class="align-right">
							<input type="button" name="patiEditBtn" id="patiEditBtn" class="circle-edit-btn">
							<label><span onclick="editPatiInfo()"></span></label>
							&nbsp;&nbsp;&nbsp;
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</section>
						<section class="in-top-middle-l">
							<form id="patiInfoForm" name="patiInfoForm">
								<div class="login-card-subject padding-bottom-30 border-bottom-009edb">
									
									<div class="gray-font-6f6f6f"><h4>*Basic</h4></div>
									<div class="black-font-000000"><h4>*Name</h4></div>
									<div class="input-two">
										<input type="text" name="firstName" value="" placeholder="First Name" readonly>
										<input type="text" name="lastName" value="" placeholder="Last Name" readonly>
									</div>
									
									<div class="black-font-000000"><h4>*Birth</h4></div>
									<div class="input-one">
										<input type="text" name="birth" value="" placeholder="170101" readonly>
									</div>
									
									<div class="black-font-000000 radio-subject"><h4>*Sex</h4>
										<input type="radio" id="male" name="sex" value="male" checked>
										<label for="male" class="radio-subject-label-s">Male</label>
										<input type="radio" id="female" name="sex" value="female">
										<label for="female" class="radio-subject-label-s">Female</label>
									</div>
								</div>
								
								<div class="login-card-subject padding-bottom-30 border-bottom-009edb">
									<div class="gray-font-6f6f6f"><h4>Information</h4></div>
									<div class="black-font-000000"><h4>Weight</h4></div>
									<div class="input-one">
										<input type="text" name="weight" value="" placeholder="kg" readonly>
									</div>
									
									<div class="black-font-000000"><h4>Height</h4></div>
									<div class="input-one">
										<input type="text" name="height" value="" placeholder="cm" readonly>
									</div>
										
									<div class="black-font-000000 radio-subject"><h4>Race</h4>
										<input type="radio" id="caucasian" name="race" value="caucasian" checked>
										<label for="caucasian" class="radio-subject-label-s">Caucasian</label>
										<input type="radio" id="asian" name="race" value="asian">
										<label for="asian" class="radio-subject-label-s">Asian</label>
										<input type="radio" id="hispanic" name="race" value="hispanic">
										<label for="hispanic" class="radio-subject-label-s">Hispanic</label>
										<input type="radio" id="african-american" name="race" value="african-american">
										<label for="african-american" class="radio-subject-label-l">African-american</label>
									</div>
									<br><br>
									<div class="black-font-000000"><h4>Blood Pressure</h4></div>
									<div class="input-two">
										<input type="text" name="firstName" value="" placeholder="min" readonly>
										<input type="text" name="lastName" value="" placeholder="max" readonly>
									</div>
									<br><br>
									
									<div class="black-font-000000 radio-left">
										<div class="h4-s">&nbsp;Exercise</div>
									</div>
									<div class="radio-right radio-circle">
										<input type="radio" id="exercise-x" name="exercise" value="-" checked>
										<label for="exercise-x"></label>
										<input type="radio" id="exercise-0" name="exercise" value="0">
										<label for="exercise-0"></label>
										<input type="radio" id="exercise-1" name="exercise" value="1">
										<label for="exercise-1"></label>
										<input type="radio" id="exercise-2" name="exercise" value="2">
										<label for="exercise-2"></label>
										<input type="radio" id="exercise-3" name="exercise" value="3">
										<label for="exercise-3"></label>
										<input type="radio" id="exercise-4" name="exercise" value="4">
										<label for="exercise-4"></label>
										<input type="radio" id="exercise-5" name="exercise" value="5">
										<label for="exercise-5"></label>
										<input type="radio" id="exercise-6" name="exercise" value="6">
										<label for="exercise-6"></label>
										<input type="radio" id="exercise-7" name="exercise" value="7">
										<label for="exercise-7"></label>
									</div>
									<div class="gray-font-717171 radio-left">(day a week)</div>
									<div class="gray-font-585858 radio-right">
										<span>-</span>
										<span>0</span>
										<span>1</span>
										<span>2</span>
										<span>3</span>
										<span>4</span>
										<span>5</span>
										<span>6</span>
										<span>7</span>
									</div>
									<br>
									
									<div class="black-font-000000 radio-left">
										<div class="h4-s">&nbsp;Coffee</div>
									</div>
									<div class="radio-right radio-circle">
										<input type="radio" id="coffee-x" name="coffee" value="-" checked>
										<label for="coffee-x"></label>
										<input type="radio" id="coffee-0" name="coffee" value="0">
										<label for="coffee-0"></label>
										<input type="radio" id="coffee-1" name="coffee" value="1">
										<label for="coffee-1"></label>
										<input type="radio" id="coffee-2" name="coffee" value="2">
										<label for="coffee-2"></label>
										<input type="radio" id="coffee-3" name="coffee" value="3">
										<label for="coffee-3"></label>
										<input type="radio" id="coffee-4" name="coffee" value="4">
										<label for="coffee-4"></label>
										<input type="radio" id="coffee-5" name="coffee" value="5">
										<label for="coffee-5"></label>
										<input type="radio" id="coffee-6" name="coffee" value="6">
										<label for="coffee-6"></label>
										<input type="radio" id="coffee-7" name="coffee" value="7">
										<label for="coffee-7"></label>
									</div>
									<div class="gray-font-717171 radio-left">(day a week)</div>
									<div class="gray-font-585858 radio-right">
										<span>-</span>
										<span>0</span>
										<span>1</span>
										<span>2</span>
										<span>3</span>
										<span>4</span>
										<span>5</span>
										<span>6</span>
										<span>7</span>
									</div>
									<br>
									
									<div class="black-font-000000 radio-left">
										<div class="h4-s">&nbsp;Alcohol</div>
									</div>
									<div class="radio-right radio-circle">
										<input type="radio" id="alcohol-x" name="alcohol" value="-" checked>
										<label for="alcohol-x"></label>
										<input type="radio" id="alcohol-0" name="alcohol" value="0">
										<label for="alcohol-0"></label>
										<input type="radio" id="alcohol-1" name="alcohol" value="1">
										<label for="alcohol-1"></label>
										<input type="radio" id="alcohol-2" name="alcohol" value="2">
										<label for="alcohol-2"></label>
										<input type="radio" id="alcohol-3" name="alcohol" value="3">
										<label for="alcohol-3"></label>
										<input type="radio" id="alcohol-4" name="alcohol" value="4">
										<label for="alcohol-4"></label>
										<input type="radio" id="alcohol-5" name="alcohol" value="5">
										<label for="alcohol-5"></label>
										<input type="radio" id="alcohol-6" name="alcohol" value="6">
										<label for="alcohol-6"></label>
										<input type="radio" id="alcohol-7" name="alcohol" value="7">
										<label for="alcohol-7"></label>
									</div>
									<div class="gray-font-717171 radio-left">(day a week)</div>
									<div class="gray-font-585858 radio-right">
										<span>-</span>
										<span>0</span>
										<span>1</span>
										<span>2</span>
										<span>3</span>
										<span>4</span>
										<span>5</span>
										<span>6</span>
										<span>7</span>
									</div>
									<br>
									
									<div class="black-font-000000 radio-left">
										<div class="h4-s">&nbsp;Smoking</div>
									</div>
									<div class="radio-right radio-circle">
										<input type="radio" id="smoking-x" name="smoking" value="-" checked>
										<label for="smoking-x"></label>
										<input type="radio" id="smoking-0" name="smoking" value="0">
										<label for="smoking-0"></label>
										<input type="radio" id="smoking-1" name="smoking" value="1">
										<label for="smoking-1"></label>
										<input type="radio" id="smoking-2" name="smoking" value="2">
										<label for="smoking-2"></label>
										<input type="radio" id="smoking-3" name="smoking" value="3">
										<label for="smoking-3"></label>
										<input type="radio" id="smoking-4" name="smoking" value="4">
										<label for="smoking-4"></label>
										<input type="radio" id="smoking-5" name="smoking" value="5">
										<label for="smoking-5"></label>
										<input type="radio" id="smoking-6" name="smoking" value="6">
										<label for="smoking-6"></label>
										<input type="radio" id="smoking-7" name="smoking" value="7">
										<label for="smoking-7"></label>
									</div>
									<div class="gray-font-717171 radio-left">(day a week)</div>
									<div class="gray-font-585858 radio-right">
										<span>-</span>
										<span>0</span>
										<span>1</span>
										<span>2</span>
										<span>3</span>
										<span>4</span>
										<span>5</span>
										<span>6</span>
										<span>7</span>
									</div>
									<br><br><br><br><br><br><br><br><br><br>
									<div class="black-font-000000 checkbox-subject"><h4>Prior illness</h4>
										<input type="checkbox" id="none" name="prior" value="none" checked>
										<label for="none" class="checkbox-subject-label-s">None</label>
										
										<input type="checkbox" id="anemia" name="prior" value="anemia">
										<label for="anemia" class="checkbox-subject-label-s">Anemia</label>
										
										<input type="checkbox" id="cardiovascular" name="prior" value="cardiovascular">
										<label for="cardiovascular" class="checkbox-subject-label-s">Cardiovascular</label>
										
										<input type="checkbox" id="stroke" name="prior" value="stroke">
										<label for="stroke" class="checkbox-subject-label-s">Stroke</label>
										
										<input type="checkbox" id="parkinson" name="prior" value="parkinson">
										<label for="parkinson" class="checkbox-subject-label-s">parkinson</label>
										
										<input type="checkbox" id="alzhemier" name="prior" value="alzhemier">
										<label for="alzhemier" class="checkbox-subject-label-s">Alzhemier</label>
									</div>
								</div>
								
								<div class="login-card-subject padding-bottom-30 border-bottom-009edb">
									<div class="black-font-000000 others-subject"><h4>Others</h4>
									
										<input type="checkbox" id="bloodDisorder" name="others" value="bloodDisorder">
										<label for="bloodDisorder" class="others-subject-label-l2">Blood Disorder</label>
										
										<input type="checkbox" id="breastDisease" name="others" value="breastDisease">
										<label for="breastDisease" class="others-subject-label-l2">Breast Disease</label>
										
										<input type="checkbox" id="digestiveDisease" name="others" value="digestiveDisease">
										<label for="digestiveDisease" class="others-subject-label-l2">Digestive Disease</label>
										
										<input type="checkbox" id="endocrine-nutirition-metabolic-disease" name="others" value="endocrine-nutirition-metabolic-disease">
										<label for="endocrine-nutirition-metabolic-disease" class="others-subject-label-l4">Endocrine, nutirition, Metabolic Disease</label>
										
										<input type="checkbox" id="diseaseofEyeAndAdnexa" name="others" value="diseaseofEyeAndAdnexa">
										<label for="diseaseofEyeAndAdnexa" class="others-subject-label-l3">disease of Eye And Adnexa</label>
										
										<input type="checkbox" id="footDisease" name="others" value="footDisease">
										<label for="footDisease" class="others-subject-label-l2">Foot Disease</label>
										
										<input type="checkbox" id="musculoskeletalDisorders" name="others" value="musculoskeletalDisorders">
										<label for="musculoskeletalDisorders" class="others-subject-label-l2" style="padding:23px 1px;">Musculoskeletal Disorders</label>
										
										<input type="checkbox" id="orthopedicProblems" name="others" value="orthopedicProblems">
										<label for="orthopedicProblems" class="others-subject-label-l2">Orthopedic Problems</label>
										
										<input type="checkbox" id="respiratoryDisease" name="others" value="respiratoryDisease">
										<label for="respiratoryDisease" class="others-subject-label-l2">Respiratory Disease</label>
										
										<input type="checkbox" id="voiceDisorder" name="others" value="voiceDisorder">
										<label for="voiceDisorder" class="others-subject-label-l2">Voice Disorder</label>
										
									</div>
								</div>
								
								<div class="login-card-subject padding-bottom-20">
									<div class="gray-font-6f6f6f"><h4>MEMO</h4></div>
									<textarea name="memo" rows="" cols="40" class="textarea-subject" readonly></textarea>
								</div>
								<div id="bottom-btn-area" class="button-center-sort height-60">
									<div class="display-none">
										<div class="color-btn blue-ok-btn-sm" data-toggle="modal" data-target="#user-edit-confirm" data-dismiss="modal">
											<div class="NB-R">OK</div>
										</div>
										<div class="color-btn white-cancel-btn-sm" onclick="editCancel()">
											<div class="NB-R">CANCEL</div>
										</div>
									</div>
									<input type="button" id="newPatientOk" class="login login-submit" value="OK">
								</div>
								
							</form>
						</section>
					</div>
				</div>
			</div>
		</div>
		<!-- CHECK BOX AND SELECT BOX of PATIENT FORM EVENT -->
		<script src="/obelab/resources/js/__control-checked.js"></script>
		<script type="text/javascript">
		
		document.getElementById('newPatientOk').addEventListener('click', function() {
			var frm = document.getElementById('patiInfoForm');
			frm.action = "/obelab/doctor/subject-newPatient";
			frm.method = "post";
			frm.submit();
		});
		
		function editPatiInfo() {
			var inputTags = document.getElementsByTagName('input');
			var textareaTags = document.getElementsByTagName('textarea');
			var inputTextTags = [];
// 			console.log(inputTags);
			for(var i=0; i<inputTags.length; i++) {
				if(inputTags[i].getAttribute('type') === 'text') {
					inputTextTags.push(inputTags[i]);
					inputTags[i].removeAttribute('readonly');
				}
			}
			textareaTags[0].removeAttribute('readonly');
			document.getElementById('bottom-btn-area').children[0].classList.remove('display-none');
// 			document.getElementById('bottom-btn-area').classList = 'block';
			document.getElementById('newPatientOk').style.display = 'none';
			inputTextTags[0].focus();
		}
		
		function editCancel() {
			var inputTags = document.getElementsByTagName('input'); 
			var textareaTags = document.getElementsByTagName('textarea');
// 			console.log(inputTags);
			for(var i=0; i<inputTags.length; i++) {
				if(inputTags[i].getAttribute('type') === 'text') {
					inputTags[i].setAttribute('readonly', '');
				}
			}
			textareaTags[0].setAttribute('readonly', '');
			document.getElementById('bottom-btn-area').children[0].classList.add('display-none');
// 			document.getElementById('bottom-btn-area').style.display = 'none';
			document.getElementById('newPatientOk').style.display = 'block';
		}
		</script>
	</body>
</html>