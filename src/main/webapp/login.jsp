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
<h2>Login with details</h2>
${requestScope.msg}
<button  onclick="location.href='index.jsp'">Back</button> <br> <br>

<form action="signIn" method="post">
<label>Email</label> :
<input class="input" type="text" name="emailid"> <br> <br>
<label>Password</label> :
<input class="input" type="password" name="password"> <br> <br>
<!-- 
Still need to fix
<label>Role</label> :
<select name="role">
  <option>Select Role</option>
  <option name="role" value="customer">Customer</option>
  <option name="role" value="admin">Admin</option>
</select> <br> <br>-->
<button type="submit" >sign in</button> |
<button type="reset" >reset fields</button> 
</form>
<br>
<p>Dont't have an account?</p> <a href="signUp.jsp">Sign Up</a>
</div>


</body>
</html>