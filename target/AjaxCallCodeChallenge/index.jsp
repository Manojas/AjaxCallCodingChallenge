<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<title>Register</title>
<style type="text/css">
form {
	display: inline-block;
	margin-left: 25%;
	margin-right: 25%;
	width: 50%;
}
.header {
	color: black;
	background-color: white;
}

h3 {
	text-align: right;
}

.main {
	color: silver;
	background-color: bisque;
}

body {
	background-color: silver;
}

.block {
	background-color: white;
	align: center;
	padding-left: 30px;
	padding-top: 30px;
	padding-bottom: 30px;
}
</style>
<script src="script.js"></script>
</head>
<body>
	<%
		if (request.getAttribute("Message") != null) {
	%>
	<p><%=request.getAttribute("Message")%></p>
	<%
		}
	%>
	<div class="block1">
		<a href="AboutUs.jsp">About Us</a>

	</div>
	<br>
	<div class="block1">
		<a href="Registered.jsp">Registered Details</a>

	</div>
	<div class="main">
		<h2 class="header">Tell Us a little about yourself</h2>
	</div>
	<div class="block">
		<form name="registrationForm">
			<div>
				<label>Enter Email Id:</label> <input type="email" name="email"
					id="email">

			</div>
			<br>
			<div>
				<label>Enter First Name:</label> <input type="text" name="fname"
					id="fname">
			</div>
			<br>
			<div>
				<label>Enter Last Name:</label> <input type="text" name="lname"
					id="lname">
			</div>
			<br>
			<div>
				<label>Enter your Current Location:</label> <input type="text" name="location"
					id="location">
			</div>
			<br>
			<div>
				<label>Enter your Date of Birth:</label> <input type="text" name="dob"
					id="dob">
			</div>
			<br>
			<div>
				<label>Enter total number of experience:</label> <input type="number" name="experience"
					id="experience">
			</div>
			<br>
			<div>
				<label>Please provide MID incase you are a former Mindtree Mind:</label> <input type="text" name="mid"
					id="mid">
			</div>
			<br>
			
			<br> <input type="submit" value="submit" id="submit" onclick="requiredFields()" >
		</form>
		<br>
	</div>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
	<script src="script.js"></script>
</body>
</html>