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
color:black;
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
<body>
<div class="block1">
<form method="post" action="index.jsp">
<input type="submit" value="Home">
</form>
</div>
<p class="h2">
Hai mind welcome to one of the greatest IT company in india.<br>
We would like to appreciate your effort for taking time to apply for the job.</p> 

<br>
<div class="move"><p id="display"></p></div>
<input type="button" value="Greeting" onclick="loadMessage()">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">


$(document).ready(function()
		{
	$("btn").click(function()
			{
         alert("Thanks for reading");		
			});
	
		});
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
	</script>
</body>
</html>