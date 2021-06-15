<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<title>Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
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
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
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
		<form name="registrationForm" method="POST">
		<p id="message"></p>
			<div>
				<label>Enter Email Id:</label> <input type="email" name="email"
					id="email" required="required">
               <span class="error_form" id="emailCheck"></span>
			</div>
			<br>
			<div>
				<label>Enter First Name:</label> <input type="text" name="fname"
					id="fname" required="required">
					 <span class="error_form" id="fnameC"></span>
			</div>
			<br>
			<div>
				<label>Enter Last Name:</label> <input type="text" name="lname"
					id="lname" required="required">
					 <span class="error_form" id="lnameC"></span>
			</div>
			<br>
			<div>
				<label>Enter your Current Location:</label> <input type="text" name="location"
					id="location">
					 <span class="error_form" id="locationC"></span>
			</div>
			<br>
			<div>
				<label>Enter your Date of Birth:</label> <input type="text" name="dob"
					id="dob">
					 <span class="error_form" id="dobC"></span>
			</div>
			<br>
			<div>
				<label>Enter total number of experience:</label> <input type="number" name="experience"
					id="experience">
					 <span class="error_form" id="experienceC"></span>
			</div>
			<br>
			<div>
				<label>Please provide MID incase you are a former Mindtree Mind:</label> <input type="text" name="mid"
					id="mid">
					 <span class="error_form" id="midC"></span>
			</div>
			<br>
			
			<br> <button type="submit"  id="submit" onclick="formData()" >Submit</button>
		</form>
		<input type="button" value="GetMembers" onclick="window.location.href='MembersList.jsp';return false;" />
		<br>
	</div>
	<script type="text/javascript">
	$(function(){
		$("#emailCheck").hide();
		$("#fnameC").hide();
		$("#lnameC").hide();
		$("#locationC").hide();
		$("#dobC").hide();
		
		var errorMail = false;
		var errorFName = false;
		var errorLName = false;
		var errorLocation = false;
		var errorDob = false;
		
		$("#email").focusout(function() {
			checkMail();
		});
		function checkMail() {
			var email = $("#email").val();
			if (email !== '') {
				$("#emailCheck").hide();
				$("#emailCheck").css("border-bottom", "2px solid #34F458");
			} else {
				$("#emailCheck").html("Email can't be blank");
				$("#emailCheck").show();
				$("#emailCheck").css("border-bottom", "2px solid #F90A0A");
				errorMail = true;
			}
		}
		$("#fname").focusout(function() {
			nameCheck();
		});
		function nameCheck() {
			var name = $("#fname").val();
			if (name !== '') {
				$("#fnameC").hide();
				$("#fnameC").css("border-bottom", "2px solid #34F458");
			} else {
				$("#fnameC").html("FirstName can't be blank");
				$("#fnameC").show();
				$("#fnameC").css("border-bottom", "2px solid #F90A0A");
				errorFName = true;
			}
		}
		$("#lname").focusout(function() {
			lnameCheck();
		});
		function lnameCheck() {
			var lname = $("#lname").val();
			if (lname !== '') {
				$("#lnameC").hide();
				$("#lnameC").css("border-bottom", "2px solid #34F458");
			} else {
				$("#lnameC").html("LastName can't be blank");
				$("#lnameC").show();
				$("#lnameC").css("border-bottom", "2px solid #F90A0A");
				errorLName = true;
			}
		}
		
		$("#dob").focusout(function() {
			dobCheck();
		});
		function dobCheck() {
			var dob = $("#dob").val();
			if (dob !== '') {
				$("#dobC").hide();
				$("#dobc").css("border-bottom", "2px solid #34F458");
			} else {
				$("#dobC").html("Enter your Date of Birth");
				$("#dobC").show();
				$("#dobC").css("border-bottom", "2px solid #F90A0A");
				errorDob = true;
			}
		}
		$("#location").focusout(function() {
			locationCheck();
		});
		function locationCheck() {
			var location = $("#gender").val();
			if (location !== '') {
				$("#locationC").hide();
				$("#locationC").css("border-bottom", "2px solid #34F458");
			} else {
				$("#locationC").html("Location should be filled");
				$("#locationC").show();
				$("#locationC").css("border-bottom", "2px solid #F90A0A");
				errorLocation = true;
			}
		}		
	});

	</script>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
	<script src="script.js"></script>
</body>
</html>