<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div{
margin: 2%;
}
</style>
</head>
<body>
<div>
${requestScope.msg }
<h2>Edit Product</h2>
<button onclick="location.href='displayAllProduct'">Back</button> <br> <br>
<form action="editProduct" method="post">

<label>Product ID</label>
<input type="text" name="pid" /> <br> <br>

<label>Brand Name</label>
<input type="text" name="brand"> <br> <br>

<label>Color</label>
<input type="text" name="color"> <br> <br>

<label>Size</label>
<input type="number" name="size"> <br> <br>

<label>Price</label>
<input type="number" name="price"> <br> <br>

<label>Quantity</label>
<input type="number" name="quantity"> <br> <br>

<input type="submit" value="Update"> ||
<input type="reset" value="Reset">
</form>
<br>

</div>
</body>
</html>