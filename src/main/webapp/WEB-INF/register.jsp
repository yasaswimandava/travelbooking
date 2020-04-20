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
</style>
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
	<button class="b">Action</button>

	<div align="center">
		<nav class="navbar navbar-dark bg-success">

			<h1 id="header" class="text-success">Registraton Page</h1>

		</nav>
		<form:form id="userForm" action="/save" onsubmit="return validate()"
			method="post" modelAttribute="user">
			<table>
				<tbody>
					<tr>
						<td class="bg-primary text-white">UserName</td>
						<td><form:input path="userName" /></td>
					</tr>
					<tr>
						<td class="bg-primary text-white">Password</td>
						<td><form:input path="password" /></td>
					</tr>
				</tbody>
			</table>
			<button type="submit">Register</button>
			<button type="button">ZoomIn</button>

			<!-- <button type="button" >Zoomout</button> -->
		</form:form>


	</div>
	<div id="myDiv"></div>


</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script> 
 $(document).ready(function(){
	  $("button").click(function(){
	    
	     /*  left: '250px',
	      opacity: '0.5',
	      height: '150px',
	      width: '150px' */
	    	/* height: 'toggle' */
	    	 var div = $("div");
	    	    div.animate({height: '300px', opacity: '1.4'}, "slow");
	    	    div.animate({width: '300px', opacity: '1.8'}, "slow");
	    	    div.animate({height: '300px', opacity: '1.4'}, "slow");
	    	    div.animate({width: '300px', opacity: '1.8'}, "slow"); 
		  /* var div = $("div");  
		    div.animate({left: '100px'}, "slow");
		    div.animate({fontSize: '3em'}, "slow"); */
	   
	  });
	}); 
	

</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script>
$(document).ready(function(){
	  $("button").click(function(){	
		  var div = $("div");  
		    div.animate({left: '0px'}, "slow");
		    div.animate({fontSize: '1em'}, "slow");
	  
});
	});


</script> -->
<script>
$(document).ready(function(){

	$("b").click(function(){
		alert("hi");
		alert($("#header").text(););
		$("#header").html();
		$("#header").attr();
		$("header").css("color");
		
	});
	
});
$('#myDiv').text('Hello World');
$('#myDiv').html('<h3>Hello World</h3>');
alert($('#myDiv').text());
$('ul').append('<li>Append List Item</li>');
$('ul').prepend('<li>Prepend List Item</li>');
$('.para1').appendTo('.para2');
$('.para1').prependTo('.para2');
$('ul').before('<h4>Hello</h4>');
$('ul').after('<h4>World</h4>');
$('ul').empty();
$('ul').detach();
</script>

</html>