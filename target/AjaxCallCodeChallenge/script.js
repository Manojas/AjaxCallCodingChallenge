//	$(function() {
////			$("#email").hide();
////			$("#fname").hide();
////			$("#lname").hide();
////			$("#location").hide();
////			$("#dob").hide();
////			
////			var errorMail = false;
////			var errorFName = false;
////			var errorLName = false;
////			var errorLocation = false;
////			var errorDob = false;
////			
////			$("#email").focusout(function() {
////				checkMail();
////			});
////			function checkMail() {
////				var email = $("#email").val();
////				if (email !== '') {
////					$("#checkMail").hide();
////					$("#email").css("border-bottom", "2px solid #34F458");
////				} else {
////					$("#checkMail").html("Email can't be blank");
////					$("#checkMail").show();
////					$("#email").css("border-bottom", "2px solid #F90A0A");
////					errorMail = true;
////				}
////			}
////			$("#fname").focusout(function() {
////				nameCheck();
////			});
////			function nameCheck() {
////				var name = $("#fname").val();
////				if (name !== '') {
////					$("#namecheck").hide();
////					$("#fname").css("border-bottom", "2px solid #34F458");
////				} else {
////					$("#namecheck").html("FirstName can't be blank");
////					$("#namecheck").show();
////					$("#fname").css("border-bottom", "2px solid #F90A0A");
////					errorFName = true;
////				}
////			}
////			$("#lname").focusout(function() {
////				lnameCheck();
////			});
////			function lnameCheck() {
////				var lname = $("#lname").val();
////				if (lname !== '') {
////					$("#lnamecheck").hide();
////					$("#lname").css("border-bottom", "2px solid #34F458");
////				} else {
////					$("#lnamecheck").html("LastName can't be blank");
////					$("#lnamecheck").show();
////					$("#lname").css("border-bottom", "2px solid #F90A0A");
////					errorLName = true;
////				}
////			}
////			
////			$("#dob").focusout(function() {
////				dobCheck();
////			});
////			function dobCheck() {
////				var dob = $("#dob").val();
////				if (dob !== '') {
////					$("#dobCheck").hide();
////					$("#dob").css("border-bottom", "2px solid #34F458");
////				} else {
////					$("#dobCheck").html("Enter your Date of Birth");
////					$("#dobCheck").show();
////					$("#dob").css("border-bottom", "2px solid #F90A0A");
////					errorDob = true;
////				}
////			}
////			$("#location").focusout(function() {
////				locationCheck();
////			});
////			function locationCheck() {
////				var location = $("#gender").val();
////				if (location !== '') {
////					$("#locationCheck").hide();
////					$("#location").css("border-bottom", "2px solid #34F458");
////				} else {
////					$("#locationcheck").html("Email should be filled");
////					$("#locationcheck").show();
////					$("#location").css("border-bottom", "2px solid #F90A0A");
////					errorLocation = true;
////				}
////			}
//			
//			$("#myForm").submit(
//					function() {
//						errorMail=false;
//						errorFName = false;
//						errorLName = false;
//						errorDob=false;
//						errorLocation=false;
//						checkMail();
//						fnameCheck();
//						lnameCheck();
//					dobCheck();
//					locationCheck();
//					
//						if (email == false && fname == false
//								&& lname == false && dob == false
//								&& location == false ) {
//							alert("Registration Successfull");
//							
//							formData();
//							return true;
//						} else {
//							alert("Please Fill the form Correctly");
//							return false;
//						}
//					});
//		});
//	function formData() {
//		var email = $("#email").val();
//		var fname = $("#fname").val();
//		var lname = $("#lname").val();
//		var dob = $("#dob").val();
//		var location = $("#location").val();
//		var experience = $("#experience").val();
//		var mid = $("#mid").val();
//		console.log(email);
//
//		var memberdata = {
//				email: email,
//			firstname: fname,
//			lastname: lname,
//			
//			location: location,
//		dob:dob,
//		experience:experience,
//		mid:mid
//		
//		}
//		console.log(memberdata);
//		$.ajax({
//			url: "RegisterMember",
//			type: "post",
//			data: { "data": JSON.stringify(memberdata) },
//			success: function(data) {
//				window.location.href = data;
//			},
//			error: function(data) {
//				window.location.href = data;
//			}
//		});
//
//
//	}
	function requiredFields()
	{
		var email=document.registrationForm.email.value;
		var fname=document.registrationForm.fname.value;
		var lname=document.registrationForm.lname.value;
		var location=document.registrationForm.location.value;
		var dob=document.registrationForm.dob.value;
		
		if(email==null || email=="")
		{
		alert("Email cant be blank");
		return false;
		}
		if(fname==null || fname=="")
		{
		alert(" First Name cant be blank");
		return false;
		}
		if(lname==null || lname=="")
		{
		alert("Last Name cant be blank");
		return false;
		}
		if(location==null || location=="")
		{
		alert("Location cant be blank");
		return false;
		}
		if(dob==null || dob=="")
			{
			alert("Name cant be blank");
			return false;
			}
		
		formData();
		return true;
		}
function formData()
{
	var email=document.registrationForm.email.value;
	var fname=document.registrationForm.fname.value;
	var lname=document.registrationForm.lname.value;
	var location=document.registrationForm.location.value;
	var dob=document.registrationForm.dob.value;
	var experience=document.registrationForm.experience.value;
		var mid=document.registrationForm.mid.value;
	
		var memberdata = {
				email: email,
			fname: fname,
			lname: lname,
			
			location: location,
		   dob:dob,
		   experience:experience,
		   mid:mid
		
		}
		console.log(memberdata);
		$.ajax({
			url: "RegisterMember",
			type: "post",
			data: { "data": JSON.stringify(memberdata) },
			success: function(data) {
				window.location.href = data;
			},
			error: function(data) {
				window.location.href = data;
			}
		});
	}
