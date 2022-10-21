<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
</head>



<body>
        <div class="container" >
	      <div class="h-100 d-flex align-items-center justify-content-center">
     		<form action="register"  method="post">
			
			<br><br><br><br><br><br><br><br>
			 <div>
			    <input type="text" class="form-control" style="width:300px;" name="email" placeholder="Email" value="" required><br>
			    <input type="text" class="form-control" style="width:300px;" name="username" placeholder="Username" value="" required><br>
			    <input type="password" class="form-control" style="width:300px;" name="password" placeholder="Password" value="" required><br>
			  </div>
  
			  <div>
			  
			  <button type="submit" class="btn btn-success" name="choice" value="login">SignUp</button>
			  <button type="reset" class="btn btn-danger" name="choice" value="login">Clear</button>
			  <a href="auth"><button type="button" class="btn btn-primary" name="choice" value="login">Login</button></a>
			  </div>
	
				<br>
				${msg}
		</form>
		</div>
		</div>
	
</body>

</html>