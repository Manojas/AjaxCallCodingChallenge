<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us page</title>
<style>
@keyframes cssg
{
0% {background-color:green;}
25% {background-color:yellow;}
50% {background-color:orange;}
100% {background-color:red;}
}

@keyframes mymove {
  0%   {top: 0px; left: 0px; background: red;}
  25%  {top: 0px; left: 100px; background: blue;}
  50%  {top: 100px; left: 100px; background: yellow;}
  75%  {top: 100px; left: 0px; background: green;}
  100% {top: 0px; left: 0px; background: red;}
}
.block1
{
align:right
}
.h2
{
color:white;
background-color:bisque;
padding:20px 15px 20px 15px;
animation-name:mymove;
animation-duration:5s;
}
body{
background:color-black;
animation-name:cssg;
animation-duration:5s;
}
.move{
background-color:bisque;
background:color-black;
animation-name:mymove;
animation-duration:5s;
}
</style>
</head>
<body class="body">
<div class="block1">
<form method="post" action="index.jsp">
<input type="submit" value="Home">
</form>

</div>
<h2 id="heading">About Us</h2>
<p class="h2" id="text">
Hai mind welcome to one of the greatest IT company in india.<br>
We would like to appreciate your effort for taking time to apply for the job.</p> 

<br>
<div class="move"><p id="display"></p></div>
<input type="button" id="btn" value="Greeting" onclick="loadMessage()">
<br>
<br>
<input type="button" id="btn2" value="Hide" >
<br>
<br>
<input type="button" id="btn3" value="Show" >
<br>
<br>
<h1></h1>
<input type="button" id="btn4" value="Apply CSS" >
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">



</script>
<script type="text/javascript">
function loadMessage()
{
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("display").innerHTML = xhttp.responseText;	
		}
	};
	xhttp.open('GET','Greeting.txt',true);
	xhttp.send();

	}
$(document).ready(function()
		{
	$("#btn").click(function()
			{
         alert("Thanks for reading");		
			});
	
		});
$(document).ready(function()
		{
	$("#btn2").click(function()
			{
       		$("#display").hide();
			});
	
		});
$(document).ready(function()
		{
	$("#btn3").click(function()
			{
       		$("#display").show();
			});
	
		});
$(document).ready(function()
		{
	$("#btn4").click(function()
			{
       		$("body").css("background-color","silver");
       		$(".h2").css("color","black");
       		$("h1").text("<h1> This test action</h1>");
			});
	
	
		});
	</script>
</body>
</html>