<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>



<body>

	<div class="container" >
	<div class="h-100 d-flex align-items-center justify-content-center">
     		<form action="auth"  method="post">
			
			<br><br><br><br><br><br><br><br>
				
	       <img alt="logo"  src="/SignupLoginUsingSpringboot/src/main/webapp/img/login.jpg" ><br><br> 

			 <div>
			    <input type="text" class="form-control" style="width:300px;" name="username" placeholder="Username" value="" required><br>
			    <input type="password" class="form-control" style="width:300px;" name="password" placeholder="Password" value="" required><br>
			  </div>
  
			  <div>
			 
			  <button type="submit" class="btn btn-primary" name="choice" value="login">Login</button>
			  <button type="reset" class="btn btn-danger" name="choice" value="login">Clear</button>
			  <a href="register"><button type="button" class="btn btn-success" name="choice" value="signup">SignUp</button></a>
			  </div>
			  
			  <br>
			  ${msg}
	
				<br>
		</form>
	</div>
	</div>	
</body>
</html>