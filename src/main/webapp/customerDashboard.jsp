<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard</title>
<style type="text/css">
.product-container{
    padding: 0 10vw;
    display: flex;
    overflow-x: auto;
    scroll-behavior: smooth;
}

.product-container::-webkit-scrollbar{
    display: none;
}

.product-card{
    flex: 0 0 auto;
    width: 250px;
    height: 450px;
    margin-right: 40px;
}

.product-image{
    position: relative;
    height="100px";
    width="100px"
    overflow: hidden;
}

.product-thumb{
    width: 100%;
    height: 350px;
    object-fit: cover;
}

.discount-tag{
    position: absolute;
    background: #fff;
    padding: 5px;
    border-radius: 5px;
    color: #ff7d7d;
    right: 10px;
    top: 10px;
    text-transform: capitalize;
}

.card-btn{
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
    padding: 10px;
    width: 90%;
    text-transform: capitalize;
    border: none;
    outline: none;
    background: #fff;
    border-radius: 5px;
    transition: 0.5s;
    cursor: pointer;
    opacity: 0;
}

.product-card:hover .card-btn{
    opacity: 1;
}

.card-btn:hover{
    background: #efefef;
}

.product-info{
    width: 100%;
    height: 100px;
    padding-top: 10px;
}

.product-brand{
    text-transform: uppercase;
}

.product-short-des{
    width: 100%;
    height: 20px;
    line-height: 20px;
    overflow: hidden;
    opacity: 0.5;
    text-transform: capitalize;
    margin: 5px 0;
}

.price{
    font-weight: 900;
    font-size: 20px;
}

.actual-price{
    margin-left: 20px;
    opacity: 0.5;
    text-decoration: line-through;
}
</style>
</head>
<body>
<button  onclick="location.href='login.jsp'">Logout</button> <br>
${requestScope.msg}
<nav class="navbar">
<div class="nav">
  <h3>Welcome to Sporty Shoes Dot Com </h3>
  <div class="nav-items">
    <div class="search">
        <input type="text"value="${userinput}" class="search-box"  placeholder="search brand, product, etc">
        <input type="submit" value="Filter"> 
    </div>
  </div>
</div>
</nav>

<ul class="links-container">
  <button onclick="location.href='displayProductCatalogue'">ALL</button> 
</ul>


<table>
<tr>
   <td> 
  
     <div class="product-container">
      <core:forEach items="${requestScope.listOfProduct}" var="product">
       <div class="product-card">
        <div class="product-image">
         <span></span>
         <img alt="" class="product-thumb" src="${product.imageurl }">
         <button>Add to wish list</button> |
         <button onclick="location.href='addToCart.jsp'">Add to cart</button>
        </div>
       <div class="product-info">
        <h2 class="product-brand"><core:out value="${product.brand }"></core:out></h2>
        <p class="product-desc"><core:out value="${product.pname }"></core:out></p>
        <span class="price">R<core:out value="${product.price }"></core:out></span>
      </div>
    </div>
    </core:forEach>
    
    <!-- User search results -->
    <core:forEach items="${requestScope.userSearchResults}" var="searchRes">
       <div class="product-card">
        <div class="product-image">
         <span></span>
         <img alt="" class="product-thumb" src="${searchRes.imageurl }">
         <button>Add to wish list</button> |
         <button onclick="location.href='...'">Add to cart</button>
        </div>
       <div class="product-info">
        <h2 class="product-brand"><core:out value="${searchRes.brand }"></core:out></h2>
        <p class="product-desc"><core:out value="${searchRes.pname }"></core:out></p>
        <span class="price">R<core:out value="${searchRes.price }"></core:out></span>
      </div>
    </div>
    </core:forEach>
</div>

   </td>
</tr>
</table>




</body>
</html>