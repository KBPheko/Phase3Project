<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h2 style="color: blue">${requestScope.msg}</h2> 
<button  onclick="location.href='login.jsp'">Logout</button> <br> <br>

<div class="containers">
 <div class="row">
    <div class="coloumn" style="border:1px dotted black">
       <p>Manage Products : </p> 
       <button onclick="location.href='storeProduct.jsp'">Add New Product</button> ||
       <button class="btn-primary" onclick="">Update Product Details</button> ||
       <button class="btn-primary" onclick="location.href='displayAllProduct'">View All Products</button> 
    </div>
    <div class="coloumn" >
       <p>Manage Users: </p>
       <button>Users</button> |
    </div>
    
    <div class="coloumn" >
       <p>Sales and Reports</p>
       <button>View Purchasing Report</button>
    </div>
</div>
    
</div>

</body>
</html>