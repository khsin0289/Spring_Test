<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Google 차트 -->
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		<script>	google.charts.load('current', {packages:['corechart']});</script>
	</head>

	<body>
		<section class="center-head-sort CR-R">
			<div class="center-div">
				<div class="chart-div">
					<!-- 파이차트 -->
					<div id="piechart" style="width: 450; height: 300px;"></div>
					<h4>Gender</h4>
				</div>
				
			</div>
			<div class="center-div">
				<div class="chart-div">
					<!-- 컬럼차트 -->
					<div id="chart_div"></div>
					<h4>Age</h4>
				</div>
				
			</div>
		</section>

	<script type="text/javascript">
		// 컬럼차트
		google.charts.setOnLoadCallback(drawChart);
		function drawChart() {
			// 차트 데이터 설정
			var data = google.visualization.arrayToDataTable([
				['연령', '비율', {role : 'style'}], 
				['10대', 4, '10%'], // 그래프 하단 표시 / 그래프 데이터(막대길이) / 그래프 데이터 표
				['20대', 6, '20%'], 
				['30대', 8, '30%'],
				['40대', 8, '30%'],
				['50대', 4, '10%'],
				['2050', 28, 'stroke-color: #871B47; stroke-opacity: 0.6; stroke-width: 8; fill-color: #BC5679; fill-opacity: 0.2']
			]);
			// 그래프 옵션
			var options = {
				title : '', // 제목
				width : 450, // 가로 px
				height : 300, // 세로 px
				bar : {
					groupWidth : '70%' // 그래프 너비 설정 %
				},
				legend : {
					position : 'none' // 항목 표시 여부 (현재 설정은 안함)
				}
			};
			// div에 차트 그리기
			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, options);
			
			//파이차트
			google.charts.load('current', {'packages':['corechart']});
			google.charts.setOnLoadCallback(drawChart);
		    function drawChart() {
		    	var men = "(30%)";
		    	var women = "(70%)";
		        var data = google.visualization.arrayToDataTable([
		          ['Language', 'Speakers (in millions)'],
		          ['여자'+'\n'+ women, 7],
		          ['남자' +'\n'+ men, 3]
		        ]);
		
		      var options = {
		        legend: 'none',
		        pieSliceText: 'label',
		        title: '',
		        pieStartAngle: 100,
		      };
		        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
		        chart.draw(data, options);
		      }
		}
	</script>
	</body>
</html>