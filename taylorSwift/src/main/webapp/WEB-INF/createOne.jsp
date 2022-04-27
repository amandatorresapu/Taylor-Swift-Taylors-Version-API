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
        <h1>Create One</h1>
         <a href="/">Index</a>
        <a href="/dashboard">Dashboard</a>
        <a href="/createOne">Create</a>
        <a href="/delete">Delete</a>
        <a href="/editOne">Edit</a>
        <a href="/viewOne">View One</a>

        <form:form action="/createOne" method="post" modelAttribute="song">
          <input type="hidden" name="user" value="${user.id}">
          
          
              <div class="form-group">
                  <label>Song Name</label>
                  <form:input path="songname" class="form-control" />
                  <form:errors path="songname" class="text-danger" />
              </div>
              <div class="form-group">
                  <label>Album:</label>
               
                  <form:select path="album" title="SUBJECT" multiple="true"
                      size="3">
                      <form:option value="Lover" label="lover" />
                      <form:option value="Fearless" label="fearless" />
                      <form:option value="RED" label="red" />
                      
                      
                  </form:select>
                  <form:errors path="album" class="text-danger" />
              </div>
              <div class="form-group">
                <label>Category</label>
               
                <form:select path="category" title="SUBJECT" multiple="true"
                    size="3">
                    <form:option value="love" label="love" />
                    <form:option value="happy" label="happy" />
                    <form:option value="sad" label="sad" />
                    
                    
                </form:select>
                  <form:errors path="category" class="text-danger" />
              </div>
              <div class="form-group">
                  <label>Quote about the song:</label>
                  <form:input path="quote" class="form-control" />
                  <form:errors path="quote" class="text-danger" />
              </div>
 
              <input type="submit" value="Make a new playlist" class="btn btn-primary" />
          </form:form>  
        
        
        
    </div> <!-- End of Container -->
</body>
</html>