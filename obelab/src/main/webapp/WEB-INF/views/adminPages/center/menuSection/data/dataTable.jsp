<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<script type="text/javascript">
			$(document).ready(function() {
			    $('#example').DataTable( {
			        "ajax": '/obelab/resources/data/arrays.txt',
			        "paging": true,
			        "scrollY": '50vh',
			        "scrollCollapse": true
			    } );
			} );
		</script>
	</head>
	<body>
		<section class="table-info-text align-left display-none">Data</section>
		<div class="btn-line align-right">
			<img class="table-btn-img" src="/obelab/resources/image/table/del-btn-img.png">
		</div>
		<section class="center-bottom-sort">
		
			<table id="example" class="display" cellspacing="0" width="100%">
		        <thead>
		            <tr>
		                <th>Name</th>
		                <th>Position</th>
		                <th>Office</th>
		                <th>Extn.</th>
		                <th>Start date</th>
		                <th>Salary</th>
		            </tr>
		        </thead>
		    </table>
			<input id="userClick" type="button" name="patient-info" class="color-btn blue-btn" value="SHOW INFO">
		</section>
		<script type="text/javascript">
		document.getElementById('userClick').addEventListener('click', function() {
			location.href="/obelab/doctor/data-show";
		});
		var sectionTags = document.getElementsByTagName('section');
		var infoText;
		for(var i=0; i<sectionTags.length; i++) {
// 			console.log(sectionTags[i]);
// 			console.log(sectionTags[i].classList);
			if(sectionTags[i].classList.contains('table-info-text')) {
				console.log(sectionTags[i].innerHTML);
				infoText = sectionTags[i].innerHTML;
				break;
			}
		}
		</script>
	</body>
</html>