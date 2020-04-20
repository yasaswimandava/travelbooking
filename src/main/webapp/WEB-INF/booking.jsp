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
	background-image: url('t3.jpg');
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
            <h1 id="test">Booking page<!-- <b>hello</b> --></h1>
            
            <form:form action="availability" modelAttribute="searchDto">
        <div class="form-group">
        
            <label id="label" for="user">Source:</label> <select name="source">
            <option value="">---select Source----</option>
                <c:forEach items="${trains}" var="train">
                    <option value="${train.source}">${train.source}</option>
                </c:forEach>
            </select> <br />
        </div>
        <div class="form-group">
            <label id="label" for="user">Destination: </label><select name="destination">
            <option value="">---select destination---</option>
                <c:forEach items="${trains}" var="train">
                    <option value="${train.destination}">${train.destination}</option>
                </c:forEach>
            </select> <br />
        </div >
        <div class="form-group">
        <button class="btn btn-primary" type="submit">Get Trains</button>
        </div>
        </form:form>
  <button id="btn1">Show Text</button>
<button id="btn2">Show HTML</button>
        </div>
        
        
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#btn1").click(function(){
    alert("Text: " + $("#test").text());
  });
  $("#btn2").click(function(){
    alert("HTML: " + $("#test").html());
  });
});
</script>



</html>



