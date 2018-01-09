<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board List</title>
</head>
<body>
	<table id="BoardTable">
	<c:forEach items="${aa}" var="boardList" varStatus="status">
		<tr>
			<td scope="col" style="width:25%"></td>
			<td scope="col" style="width:25%"></td>
			<td scope="col" style="width:25%"></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>