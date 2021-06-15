function requiredFields() {
	var email = document.registrationForm.email.value;
	var fname = document.registrationForm.fname.value;
	var lname = document.registrationForm.lname.value;
	var location = document.registrationForm.location.value;
	var dob = document.registrationForm.dob.value;

	if (email == null || email == "") {
		alert("Email cant be blank");
		return false;
	}
	if (fname == null || fname == "") {
		alert(" First Name cant be blank");
		return false;
	}
	if (lname == null || lname == "") {
		alert("Last Name cant be blank");
		return false;
	}
	if (location == null || location == "") {
		alert("Location cant be blank");
		return false;
	}
	if (dob == null || dob == "") {
		alert("Name cant be blank");
		return false;
	}

	formData();
	return true;
}
function formData() {
	var email = document.registrationForm.email.value;
	var fname = document.registrationForm.fname.value;
	var lname = document.registrationForm.lname.value;
	var location = document.registrationForm.location.value;
	var dob = document.registrationForm.dob.value;
	var experience = document.registrationForm.experience.value;
	var mid = document.registrationForm.mid.value;
	//	
	// var memberdata = {
	// email: email,
	// fname: fname,
	// lname: lname,
	//			
	// location: location,
	// dob:dob,
	// experience:experience,
	// mid:mid
	//		
	// }

	let data = email + "," + fname + "," + lname + "," + location + "," + dob
			+ "," + experience + "," + mid;

	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {

			// document.getElementById("message").innerHTML=xhttp.responseText;

			alert(this.responseText());
			alert("Registered successfully");
			// var message = xhttp.responseText;
			// $(document).ready(function() {
			//
			// $("#message").text(message);
			//
			// });
		}
	};

	xhttp.open("POST", "RegisterMember", true);
	xhttp.send(data);

	// console.log(memberdata);
	// $.ajax({
	// url: "RegisterMember",
	// type: "post",
	// data: { "data": JSON.stringify(memberdata) },
	// success: function(data) {
	// window.location.href = data;
	// },
	// error: function(data) {
	// window.location.href = data;
	// }
	// });
	//		
}
