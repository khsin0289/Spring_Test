<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>OBELAB</title>
	</head>
	<body>
		<div class="navbar navbar-inverse set-radius-zero">
	        <div class="container">
<!-- 	            <div class="navbar-header"> -->
<!-- 	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> -->
<!-- 	                    <span class="icon-bar"></span> -->
<!-- 	                    <span class="icon-bar"></span> -->
<!-- 	                    <span class="icon-bar"></span> -->
<!-- 	                </button> -->
<!-- 	                <a></a> -->
<!-- 	                <a class="navbar-brand" href="/obelab/admin"> -->
	
<!-- 	                    <img src="/obelab/resources/assets/img/logo.png" alt="OBELAB"/> -->
<!-- 						<img src="" alt="OBELAB"/> -->
<!-- 	                </a> -->
	
<!-- 	            </div> -->
	
	            <div class="left-div">
	            	<a href="/obelab/doctor"><img src="/obelab/resources/image/logo/logo.png"/></a>
	                <div class="user-settings-wrapper">
	                    <ul class="nav">
	
	                        <li class="navi-item dropdown">
	                            <a class="navi-link dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
	                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
	                            </a>
	                            <div class="dropdown-menu dropdown-settings">
	                            	<div class="media"><a class="btn btn-block" href="/obelab/doctor/myinfo">MyInfo</a></div>
	                            	<div class="media"><a class="btn btn-block" href="/obelab/doctor/device">Device</a></div>
	                            	<div class="media"><a class="btn btn-block" data-toggle="modal" data-target="#basic-modal-ok-cancel" onclick="signOutModalOpen()">SignOut</a></div>
	                            	<div class="media"><a class="btn btn-block" data-toggle="modal" data-target="#basic-modal-ok" onclick="logoutModalOpen()">LogOut</a></div>
	                            </div>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
	    <script type="text/javascript">
	    function signOutModalOpen() {
	    	document.getElementById('ok-cancel-basic-modal-title').innerHTML = "Sign Out Confirm";
	    	document.getElementById('ok-cancel-basic-modal-body').innerHTML = "계정을 삭제하시겠습니까?";
	    	document.getElementById('ok-cancel-woring-about').value = "signout";
	    }
	    function logoutModalOpen() {
	    	document.getElementById('ok-basic-modal-title').innerHTML = "Log Out";
	    	document.getElementById('ok-basic-modal-body').innerHTML = "로그아웃 되었습니다.";
	    	document.getElementById('ok-woring-about').value = "logout";
	    }
	    </script>
	    <!-- LOGO HEADER END-->
	</body>
</html>