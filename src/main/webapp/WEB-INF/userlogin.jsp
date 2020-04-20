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
<style>
body {
	height: 100vh;
	width: 100%;
	background-image: url('t2.jpg');
	background-size: cover;
	display: table;
	background-attachment: fixed;
}
</style>
</head>
<body>

<div align="center" id="flip"><h1>Click to slide the panel down or up</h1></div>
	<div align="center" id="panel">
		<nav class="navbar navbar-dark bg-success">

			<h1 class="text-success">Login Page</h1>

		</nav>
		<form:form id="userForm" action="/login" onsubmit="return validate()"
			method="post" modelAttribute="user">
			<div class="col-md-10 m-auto" align="center">
				<div class="form-group  has-error col-md-8" align="center">
					<span class="help-block"><c:out value="${error.errorMsg}"></c:out></span>
				</div>
				</div>

				<table>

					<tbody>

						<tr>

							<td class="bg-primary text-white">UserName</td>
							<td><form:input id="user" path="userName" /></td>
							<td><span class="error_form" id="usermessage">></span></td>
						</tr>
						<tr>
							<td class="bg-primary text-white">Password</td>
							<td><form:input id="password" path="password" /></td>
							<td><span class="error_form" id="passwordmessage">></span></td>
						</tr>
					</tbody>
				</table>
				<button type="submit">Register</button>
		</form:form>
		<div class="form-group  has-error col-md-8">
			<span class="help-block"><c:out value="${error.errorMsg}"></c:out></span>
		</div>

	</div>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
<script>
$(function(){

	var $registerForm=$('#userForm');
	jQuery.validator.addMethod("lettersonly", function(value,element){
	
		return this.optional(element)||/^[A-Z]+/i.test(value);
		
		
	},"only alphets");
	
	if($registerForm.length){
		$registerForm.validate({
			rules:{
				userName:{
					required:true,
					lettersonly:true
				},
				password:{
					required:true,
				}
				
			},
			messages:{
				userName:{
					required:'Name is mandatory'
				},
				password:{
					required:'email is mandatory'
				}   
			}
		})
	}
})

</script>
<script>
$(document).ready(function(){
  $("input").focus(function(){
    $(this).css("background-color", "yellow");
  });
  $("input").blur(function(){
    $(this).css("background-color", "green");
  });
});
</script>
<script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>



</html>







