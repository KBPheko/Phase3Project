<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Customers/Shoppers</title>
<style type="text/css">
body{
margin: 2%;
}
</style>
</head>
<body>
<h2>List of all registered customers</h2>
<button onclick="location.href='adminDashboard.jsp'">Back</button> <br> <br>

<form action="searchResults" method="get">
<label>Filter : </label>
<input type="text" value="${keyword}" name="keyword" id="keyword" placeholder="Search users"> 
<input type="submit" value="Search"> | 
<input type="reset" value="Clear">
</form>

<core:forEach items="${requestScope.listOfUsers}" var="usr">
<ul>
  <li> <core:out value="${usr.fullname}"></core:out> - <b> <core:out value="${usr.emailid }"></core:out> </b> </li>
</ul>
</core:forEach>
<!-- display search results -->

  <core:forEach items="${requestScope.searchResults}" var="usr">
      
      <core:choose>
          <core:when test="${requestScope.searchResults != null}">
             <ul>
               <li> <core:out value="${usr.fullname}"></core:out> - <b> <core:out value="${usr.emailid }"></core:out> </b> </li>
             </ul>
          </core:when>
          <core:otherwise>
            <core:out value="No data"></core:out>
             No such users
          </core:otherwise>
      </core:choose>
       
  </core:forEach>

</body>
</html>