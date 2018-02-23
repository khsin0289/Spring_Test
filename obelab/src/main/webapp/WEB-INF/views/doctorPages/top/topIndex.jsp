<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>OBELAB</title>
	</head>
	<body>
		<h1>doctorTop</h1>
		<button onclick="data()">data</button>
		<button onclick="subject()">subject</button>
		<button onclick="push()">push</button>
		<button onclick="myinfo()">myinfo</button>
		<button onclick="device()">device</button>
		<button onclick="logout()">logout</button>
		<button onclick="signout()">signout</button>
		
		<script type="text/javascript">
			function data() {
				location.href="/obelab/doctor/data";
			}
			function subject() {
				location.href="/obelab/doctor/subject";
			}
			function push() {
				location.href="/obelab/doctor/push";
			}
			function myinfo() {
				location.href="/obelab/doctor/myinfo";
			}
			function device() {
				location.href="/obelab/doctor/device";
			}
			function logout() {
				location.href="/obelab/doctor/logout";
			}
			function signout() {
				location.href="/obelab/doctor/signout";
			}
		</script>
	</body>
</html>