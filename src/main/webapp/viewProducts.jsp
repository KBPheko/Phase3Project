<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-color: #96D4D4;
  border-collapse: collapse;
}

body{
background: #e6f0fc;
color: black;
font-family: monospace;
margin: 5%;
}
.input{
background: white;
}

</style>

</head>
<body>
<h2>All Products In Stock</h2>
<button onclick="location.href='adminDashboard.jsp'">Back</button> <br> <br>
<button onclick="location.href='storeProduct.jsp'">Add Product</button> |
<button onclick="location.href='editProduct.jsp'">Update Product Details</button>  <br> <br>

<!-- Filter products -->
<form action="displaySearch" method="get">
<label>Filter : </label>
<input type="text" value="${keyword}" name="keyword" id="keyword" placeholder="Search products"> 
<input type="submit" value="Search"> | 
<input type="reset" value="Clear">
</form> <br> <br>

<!-- Display table of all filtered products -->
        <table style="border: 1px solid black ;" width="100%">
            <tr style="border: 1px solid black">
                <th># Product ID</th>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Brand</th>
                <th>Size</th>
                <th>Price</th>
                <th>Color</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>

<core:forEach items="${requestScope.listOfFilteredProduct}" var="product">
            <tr style="border: 1px solid black">
            
                <td> <core:out value="${product.pid }"></core:out> </td>
                <td> <img alt="product-image" src="${product.imageurl }" height="100px" width="100px"> </td>
                <td> <core:out value="${product.pname }"></core:out> </td>
                <td> <core:out value="${product.category }"></core:out> </td>
                <td> <core:out value="${product.brand }"></core:out> </td>
                <td> <core:out value="${product.size }"></core:out> </td>
                <td> <core:out value="${product.price }"></core:out> </td>
                <td> <core:out value="${product.color }"></core:out> </td>
                <td> <core:out value="${product.quantity }"></core:out> </td>
                <td> <a type="button" href="${pageContext.request.contextPath }/displayAllProduct/delete/${product.pid}" onclick="return confirm('Are you sure?')">Delete</a> </td>
              
            </tr>
</core:forEach>

<!-- All products -->
<core:forEach items="${requestScope.listOfProduct}" var="product">

            <tr>
            
                <td> <core:out value="${product.pid }"></core:out> </td>
                <td> <img alt="product-image" src="${product.imageurl }" height="100px" width="100px"> </td>
                <td> <core:out value="${product.pname }"></core:out> </td>
                <td> <core:out value="${product.category }"></core:out> </td>
                <td> <core:out value="${product.brand }"></core:out> </td>
                <td> <core:out value="${product.size }"></core:out> </td>
                <td> <core:out value="${product.price }"></core:out> </td>
                <td> <core:out value="${product.color }"></core:out> </td>
                <td> <core:out value="${product.quantity }"></core:out> </td>
                <td> <a type="button" href="${pageContext.request.contextPath }/displayAllProduct/delete/${product.pid}" onclick="return confirm('Are you sure?')">Delete</a> </td>
            </tr>
</core:forEach>
        </table>

<!-- Displayed all unfiltered table -->

<!--       <table style="border: 1px solid black; margin:auto ;" width="100%">
            <tr>
                <th># Product ID</th>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Brand</th>
                <th>Size</th>
                <th>Price</th>
                <th>Color</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
<core:forEach items="${requestScope.listOfProduct}" var="product">

            <tr>
            
                <td> <core:out value="${product.pid }"></core:out> </td>
                <td> <img alt="product-image" src="${product.imageurl }" height="100px" width="100px"> </td>
                <td> <core:out value="${product.pname }"></core:out> </td>
                <td> <core:out value="${product.category }"></core:out> </td>
                <td> <core:out value="${product.brand }"></core:out> </td>
                <td> <core:out value="${product.size }"></core:out> </td>
                <td> <core:out value="${product.price }"></core:out> </td>
                <td> <core:out value="${product.color }"></core:out> </td>
                <td> <core:out value="${product.quantity }"></core:out> </td>
                <td> <input type="button" value="Edit"> | <input type="button" value="Delete"> </td>
            </tr>
</core:forEach>
        </table>
   -->

</body>
</html>