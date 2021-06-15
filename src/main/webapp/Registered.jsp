<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "com.mindtree.challenge.model.Member" %>
    <%@ page import = "java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Resgistered Members</title>
<style type="text/css">
.header{
color:brown;
background-color:orange;
}
h3
{
text-align:right;
}
.main{
color:black;
background-color:orange;
}
body{
background-color:silver;
}
.block
{
background-color:white;
align:center;
padding-left:30px;
padding-top:30px;
padding-bottom:30px;
}
</style>
</head>
<body>
<div class="block1">
<form method="post" action="index.jsp">
<input type="submit"  id="home" value="Home">
</form>
</div>

<div class ="block">
<h2>The Details are:</h2>
<table border=1>
<tr>
<td>Email id</td>
<th>First Name
<th>Last Name</th>
<th>Location</th>
<th>DOB</th>
<th>Experience</th>
<th>Mid</th>
</tr>

<%
List<Member> pl=(List<Member>)request.getAttribute("Members");
for(Member p:pl){	
%>
<tr><td><%= p.getEmail() %></td>
<td><%= p.getFname() %></td>
<td><%= p.getLname() %></td>
<td><%= p.getLocation() %></td>
<td><%= p.getDob() %></td>
<td><%= p.getExperience() %></td>
<td><%= p.getMid() %></td>
</tr>
<% }%>
</table>
</div>
<script src="script.js"></script>
</body>
</html>