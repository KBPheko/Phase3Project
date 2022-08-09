<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>All Products In Stock</h2>
<button onclick="location.href='adminDashboard.jsp'">Back</button> <br> <br>
 <button onclick="location.href='storeProduct.jsp'">Add Product</button> |
       <button class="btn-primary" onclick="">Update Product Details</button>  <br> <br>
        <table style="border: 1px solid black; margin:auto ;" width="100%">
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
            </tr>

<core:forEach items="${requestScope.listOfProduct}" var="product">
            <tr>
            
                <td> <core:out value="${product.pid }"></core:out> </td>
                <td> <img alt="" src="${product.imageurl }" height="100px" width="100px"> </td>
                <td> <core:out value="${product.pname }"></core:out> </td>
                <td> <core:out value="${product.category }"></core:out> </td>
                <td> <core:out value="${product.brand }"></core:out> </td>
                <td> <core:out value="${product.size }"></core:out> </td>
                <td> <core:out value="${product.price }"></core:out> </td>
                <td> <core:out value="${product.color }"></core:out> </td>
                <td> <core:out value="${product.quantity }"></core:out> </td>
              
            </tr>
</core:forEach>
        </table>
   

</body>
</html>