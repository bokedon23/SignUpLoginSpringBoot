<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditForm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
</head>



<body>
        <div class="container" >
	      <div class="h-100 d-flex align-items-center justify-content-center">
     		<form action="update"  method="post">
			
			<br><br><br><br><br><br><br><br>
			<h2>Edit Form</h2>
			 <div>
			 <input type="text" class="form-control" style="width:300px;" name="uid" placeholder="Uid" value="${userDto.uid }"  readonly="readonly"><br>
			    <input type="text" class="form-control" style="width:300px;" name="email" placeholder="Email" value="${userDto.email}" required><br>
			    <input type="text" class="form-control" style="width:300px;" name="username" placeholder="Username" value="${userDto.username}" required><br>
			    <input type="password" class="form-control" style="width:300px;" name="password" placeholder="Password" value="${userDto.password}" required><br>
			  </div>
  
			  <div>
			  
			  <button type="submit" class="btn btn-success" name="choice" value="login">Update</button>
			  <button type="reset" class="btn btn-danger" name="choice" value="login">Clear</button>
			  </div>
	
				<br>
				${msg}
		</form>
		</div>
		</div>
	
</body>

</html>