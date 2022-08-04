<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Create your sporty account</h2>
${requestScope.msg}
<button  onclick="location.href='index.jsp'">Back</button> <br>
<form action="signUp" method="post">
<label>Full Name</label> :
<input type="text" name="fullname"> <br> <br>
<label>Email</label> :
<input type="text" name="emailid"> <br> <br>
<label>Password</label> :
<input type="password" name="password"> <br> <br>
<label>User Role</label>
<input type="radio" name="role" value="admin">Admin
<input type="radio" name="role" value="customer">Customer <br> <br>
<button type="submit" >Create</button> |
<button type="reset" >reset fields</button> 
</form>
<br>
<p>Have an account already?</p> <a href="login.jsp">Sign In</a>
</body>
</html>