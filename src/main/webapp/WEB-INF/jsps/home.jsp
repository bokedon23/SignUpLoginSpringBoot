<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
</head>



<body>
<br>
<br>
		<h2><center>${msg}</center></h2>
        <div class="container" >
	      <div class="h-100 d-flex align-items-center justify-content-center">
     		<form action="signup"  method="post">
				
			  <br>
			  <a href="auth"><button type="button" class="btn btn-danger" name="choice" value="logout">LogOut</button></a>
			  </div>
	
				<br>
		</form>
		
		<div class="container">      
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>Email</th>
        <th>Username</th>
        <th>Password</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <c:forEach var="user" items="${userList}">
      			<tr>
        			<td>${user.email}</td>
        			<td>${user.username}</td>
        			<td>${user.password}</td>
        			<td>
        
				        <a href="showEditForm?uid=${user.uid}">
				            <button type="button" class="btn btn-primary">Edit</button>
				        </a>
        
				         <a href="deleteUser?uid=${user.uid}">
				           <button type="button" class="btn btn-danger">Delete</button>
				         </a>
        
        
        			<td>
        			
      			</tr>
      	</c:forEach>		
      </tr>
    </tbody>
  </table>
</div>
		</div>
		</div>
	
</body>

</html>