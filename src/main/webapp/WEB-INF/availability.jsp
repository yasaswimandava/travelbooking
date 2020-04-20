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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>


<div class="container" >
		<h1 align="center">Train Details</h1>
			<c:forEach var="train" items="${trainList}">
				<h2>${train.key}</h2>

				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Train Id</th>
							<th>Train Name</th>
							<th>cost</th>
							<th>book</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="t" items="${train.value}">
							<tr>
								<td>${t.trainId}</td>
								<td>${t.trainName}</td>
								<td>${t.cost}</td>
								<th><a href="bookticket?id=${t.trainId}" class="btn btn-primary btn-sm" id="b">book</a></th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:forEach>
	</div>
</body>
</html>