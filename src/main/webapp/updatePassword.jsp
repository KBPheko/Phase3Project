<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background: #e6f0fc;
color: black;
font-family: monospace;
margin: 10%;
}
.input{
background: white;
}
</style>
</head>
<body>


<div align="center">
<h2>Update Password</h2>
<h4>${requestScope.msg}</h4>
<form action="updatePassword" method="post">
<label>Email</label> :
<input class="input" type="text" name="emailid"> <br> <br>
<label>Update Password</label> :
<input class="input" type="password" name="password"> <br> <br>
<button type="submit" >Update</button> |
<button type="reset" >Reset fields</button> 
</form>
<br>
<a href="login.jsp">login</a> | <a href="adminDashboard.jsp">Cancel</a>
</div>


</body>
</html>