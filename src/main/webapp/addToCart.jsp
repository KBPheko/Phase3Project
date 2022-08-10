<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>My Cart</h2>
<button onclick="location.href='displayProductCatalogue'">Back</button>
<table cellpadding="2" cellspacing="2" border="1">
   <tr>
      <th>Option</th>
      <th>PId</th>
      <th>Name</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Sub Total</th>
   </tr>
   
   <core:set var="total" value="0">
   
   </core:set>
   <core:forEach var="item" items="${sessionScope.cart}">
     <core:set var="total" value="${total + item.product.price * item.quantity }">
         
     </core:set>
     <tr>
        <td align="center">
           <a href="${pageContext.request.contextPath}/cart/remove/${item.product.pid}"></a>
        </td>
     </tr>
   </core:forEach>
   
</table>
</body>
</html>