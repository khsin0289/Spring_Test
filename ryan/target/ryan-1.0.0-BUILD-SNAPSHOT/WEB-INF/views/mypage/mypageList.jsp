<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>mypageList</title>

<style type="text/css">
	#mypageTable{border: 1px solid black;}
</style>
</head>
<body>
<h1>MY PAGE</h1>
	<table id="mypageTable">
		<c:forEach items="${mypageList}" var="mypageList" varStatus="status">
			<tr>
				<td scope="col" style="width:25%">${mypageList.no}</td>
				<td scope="col" style="width:25%">${mypageList.id}</td>
				<td scope="col" style="width:25%">${mypageList.password}</td>
				<td scope="col" style="width:25%">${mypageList.name}</td>
			</tr>
		</c:forEach>
	</table>
<a href="/ryan/index.jsp">메인으로</a>
</body>
</html>