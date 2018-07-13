<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Book Store</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
  <ul>
	  <li><a href="list">Book Listing</a></li>
    <li><a class="active" href="admin">Admin</a></li>
	</ul>

<div class="container">
    <form name="book_form" method="post" action="${empty(book) ? 'insert' : 'update'}">
    <c:if test="${!empty(book)}">
    	<input type="hidden" name="id" value="${book.id}"/>
    </c:if>
    <h2>
        ${empty(book) ? 'New' : 'Edit'} Book Form
    </h2>
	  	<p><label>Title:</label>
    	<input type="text" name="booktitle" value="${!empty(book) ? book.title : ''}" /></p>
	  	
	  	<p><label>Author:</label>
    	<input type="text" name="bookauthor"  value="${!empty(book) ? book.author : ''}" /></p>
    
    	<p><label>Price:</label>
    	<input type="text" name="bookprice" value="${!empty(book) ? book.price : ''}"  /></p>
	  
	  	<p><input type="submit" value="Submit"></p>
	</form>
	</div>
</body>
</html>
