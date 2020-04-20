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
	/* background-size:cover;
padding-left: 10em;
padding-right: 10em;
font-family:
Georgia, "Times New Roman",
Times, serif; 
color: green; */
	font-size: 17px;
	font-family: arial;
	background: lightblue;
	line-height: 1.5em;
}
</style>
<style>
/* USED CSS KO OF CLASS IF U USE .SOMETHING IT IS CALLED CLASS*/
.body {
	font-size: 17px;
	font-family: arial;
	background: #f4f4f4;
	line-height: 1.5em;
}
/* The side navigation menu */
.sidenav {
	height: 100%; /* 100% Full-height */
	width: 0; /* 0 width - change this with JavaScript */
	position: fixed; /* Stay in place */
	z-index: 1; /* Stay on top */
	top: 0; /* Stay at the top */
	left: 0;
	background-color: #111; /* Black*/
	overflow-x: hidden; /* Disable horizontal scroll */
	padding-top: 60px; /* Place content 60px from the top */
	transition: 0.5s;
	/* 0.5 second transition effect to slide in the sidenav */
}

/* The navigation menu links */
.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

/* USED THE MOUSE HOVER IN THE MAIN PAGE */
.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}
/* USED THE CSS KO OF ID */
#main {
	transition: margin-left .5s;
	padding: 20px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}
</style>



<style>
/* USED THE KO OF 2D TRANSFORMATION WHICH IS OF DIFFERENT TYPES LIKE ROTATE, SKEW */
/* div {
  transform: rotate(10deg);
} */
/* div {
  transform: skew(20deg, 10deg);
} */
/* div {
	transform: skew(20deg);
} */
</style>
</head>

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style1.css" />
<title>Add Food</title>
<body>
	<h1 align="center">WELCOME TO THE TICKET BOOKING APP</h1>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		 <a href="booking"> <a
				href="travelhistory"> <br> <br>
					
					<h2 align="center">
						<a href="booking">Book Your Ticket Here</a>
					</h2>
					<h2 align="center">
						<a href="travelhistory">View Travel History</a>
					</h2>
					<h2 align="center">
						<a href="checktrain">Check Trains</a>
					</h2>
	</div>

</body>
</div>
<br>
<br>
<div align="center">
	<span onclick="openNav()"> CLICK HERE FOR ENTERINING APP </span>
</div>
<div id="main" align="center">...</div>
</body>


<script>
	function openNav() {
		document.getElementById("mySidenav").style.width = "50%";
	}

	/* Close/hide the sidenav */
	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
	}
</script>

</html>