<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style type="text/css">
body{
background: #e6f0fc;
color: black;
font-family: monospace;
margin: 2%;
}
</style>
</head>
<body>
<h1>Admin Dashboard</h1>
<h4 style="color: blue">${requestScope.msg}</h4> 
<button  onclick="location.href='login.jsp'">Logout</button> |
<button onclick="location.href='updatePassword.jsp'">Update Password</button>
 <br>

<div class="containers">
 <div class="row">
    <div class="coloumn" style="">
       <p>Manage Products : </p> 
       <button onclick="location.href='displayAllProduct'">Display all products in store</button> 
    
    </div>
    <div class="coloumn" >
       <p>Manage Users: </p>
       <button onclick="location.href='displayUsers'">Display all customers</button> 
    </div>
    
    <div class="coloumn" >
       <p>Sales and Reports</p>
       <button>View Purchasing Report</button>
    </div>
</div>
    
</div>

</body>
</html>