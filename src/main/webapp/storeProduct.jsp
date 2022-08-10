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
${requestScope.msg }
<h2>Add New Product</h2>
<button onclick="location.href='displayAllProduct'">Back</button> <br> <br>
<form action="storeProduct" method="post">

<label>Product Name</label>
<input type="text" name="pname"> <br> <br>

<label>Category</label>
<select name="category">
     <option>Select Category</option>
     <option value="MEN">Men</option>
     <option value="WOMEN">Women</option>
     <option value="KIDS">Kids</option>
</select> <br> <br>

<label>Brand Name</label>
<input type="text" name="brand"> <br> <br>

<label>Color</label>
<input type="text" name="color"> <br> <br>

<label>Size</label>
<input type="number" name="size"> <br> <br>

<label>Price</label>
<input type="number" name="price"> <br> <br>

<label>Paste Image URL</label>
<input type="url" name="imageurl"> <br> <br>

<label>Quantity</label>
<input type="number" name="quantity"> <br> <br>

<input type="submit" value="Store Product"> ||
<input type="reset" value="Reset">
</form>
<br>

</body>
</html>