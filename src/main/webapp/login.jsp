<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Login with details</h2>
<button  onclick="location.href='index.jsp'">Back</button> <br>
<form action="">
<label>Email</label> :
<input type="text" name="emailid"> <br> <br>
<label>Full Name</label> :
<input type="text" name="fullname"> <br> <br>
<label>Role</label> :
<select name="role">
  <option>Select Role</option>
  <option value="customer">Customer</option>
  <option value="admin">Admin</option>
</select> <br> <br>
<button type="submit" >sign in</button> |
<button type="reset" >reset fields</button> 
</form>
<br>
<a href="signUp.jsp">Sign Up</a>
</body>
</html>