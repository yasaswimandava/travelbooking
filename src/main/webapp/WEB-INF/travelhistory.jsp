<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('t6.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}
</style >
</head>
<body>
<div align="center">

<h2>Select your user</h2>
			<form:form name="myForm" action="getdetails"
				onsubmit="return validation()" method="post">
			<table>
			<tbody>
			<tr>
			<td>	<select name="userId">
					<c:forEach items="${users}" var="u">
						<option class="option" value="${u.userId}">${u.userName}</option>
					</c:forEach>
				</select></td>
				</tr>
					</tbody>
					</table>
					<button type="submit" class="btn btn-primary btn-info btn-lg active">get
					Details</button>
			</form:form>
		</div>
		<br>
		<br>
		<div align="center">
			<table border="1"  class="table table-dark table-striped">
				<thead>
					<tr>
						<th>Source</th>
						<th>Destination</th>
						<th>Date</th>
				</thead>
				<tbody>
					<c:forEach var="booking" items="${bookings}">
						<tr>
							<td>${booking.train.source}</td>
							<td>${booking.train.destination}</td>
							<td>${booking.date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div align="right">
			<a class="btn btn-primay btn-lg pool-bottom" href="/home" class="bg-primary text-white">go to Home</a>
		
		</div>
		</div>
</body>
</html>