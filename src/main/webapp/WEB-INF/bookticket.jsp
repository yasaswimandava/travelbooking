<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('t5.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}
</style >
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>Select your user</h1>
<form:form action="/savebook" method="post">
	<label for="user">User Name:</label>
	<select name="userId">
		<c:forEach items="${users}" var="u">
			<option value="${u.userId}">${u.userName}</option>
		</c:forEach>
	</select>
	<br />
	<button type="submit">Book Now</button>
</form:form>
</div>
</body>
</html>