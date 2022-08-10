<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style type="text/css">
body{
margin: 2%;
}
</style>
</head>
<body style="">
<h2 style="color: blue">${requestScope.msg}</h2> 
<button  onclick="location.href='login.jsp'">Logout</button> |
<button>Update Password</button>
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