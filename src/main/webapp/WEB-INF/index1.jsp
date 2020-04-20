<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('t1.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}
</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-success">

		<h1 align="center">WELCOME TO TRAIN BOOKING APP</h1>

	</nav>
	
	<div align="center">
	<a  class="bg-primary text-white" href="/userlogin">Login here</a>

	<br>
	<br>
	<a  class="bg-primary text-white" href="/register">New User Register Here</a>
</div>
</body>

</html>