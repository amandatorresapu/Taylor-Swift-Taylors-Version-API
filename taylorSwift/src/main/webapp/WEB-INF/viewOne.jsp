<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title Here</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
        <h1>View One</h1>
         <a href="/">Index</a>
        <a href="/dashboard">Dashboard</a>
        <a href="/createOne">Create</a>
        <a href="/delete">Delete</a>
        <a href="/editOne">Edit</a>
        <a href="/viewOne">View One</a>

        <h1><c:out value="${song.songname }"></c:out></h1> 
        <h5>(Added by<c:out value="${user.name}"></c:out>)</h5> 
        
        
        
         <h2>Category:<c:out value="${song.category}"></c:out></h2> 
         
        
        
        
        
        
        
    </div> <!-- End of Container -->
</body>
</html>