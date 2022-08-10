<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button  onclick="location.href='login.jsp'">Logout</button> <br>
${requestScope.msg}
<nav class="navbar">
<div class="nav">
  <h3>Welcome to Sporty Shoes Dot Com </h3>
  <div class="nav-items">
    <div class="search">
        <input type="text" class="search-box" placeholder="search brand, product, etc">
        <button class="search-btn">Search</button>
    </div>
  </div>
</div>
</nav>

<ul class="links-container">
  <li class="link-item"> <a href="">ALL</a> </li>
  <li class="link-item"><a href="">WOMEN</a> </li>
  <li class="link-item"><a href="">MEN</a> </li>
  <li class="link-item"><a href="">KIDS</a> </li>
  <li class="link-item"><a href="">BRANDS</a> </li>
</ul>

<div class="product-container">
  <div class="product-card">
    <div class="product-image">
      <span></span>
      <img alt="" class="product-thumb" src="">
      <button>Add to wish list</button>
    </div>
    <div class="product-info">
      <h2 class="product-brand">brand</h2>
      <p class="product-desc">kklsjdl</p>
      <span class="price">R1200</span>
    </div>
  </div>
</div>

</body>
</html>