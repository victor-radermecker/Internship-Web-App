<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<nav class="navbar navbar-dark bg-dark">
	  <div class="container-fluid justify-content-start">
	    <a class="navbar-brand" href="/InternshipsAtX/home">
	      <img src="images/logo.png" style="max-height: 35px;">
	    </a>
	    <a class="navbar-brand" href="/InternshipsAtX/home" style="font-family: sans-serif;">Internship Management</a>
	  </div>
	</nav>
	
	<div class="limiter">
		<div class="container-login100 background_style">
			<div class="wrap-login100">
			
				<form class="login100-form validate-form p-l-55 p-r-55" method="get" action="login">	
					<div class="container-login100-form-btn p-t-50 p-b-25">
						<button type="submit" class="login100-form-btn">
							Log In
						</button>
					</div>			
				</form>

				<form class="login100-form validate-form p-l-55 p-r-55" method="get" action="sign-in">	
					<div class="container-login100-form-btn p-t-25 p-b-25">
						<button type="submit" class="login100-form-btn">
							Register now
						</button>
					</div>			
				</form>
				
				<form class="login100-form validate-form p-l-55 p-r-55" method="get" action="upload-topic">	
					<div class="container-login100-form-btn p-t-25 p-b-50">
						<button type="submit" class="login100-form-btn">
							Upload A Topic
						</button>
					</div>			
				</form>
				<h1 class="easter-egg" style="visibility:hidden; font-size:0;">Remi Delacourt was here</h1> <!-- An easter-egg ! -->
			</div>
		</div>
	</div>
	
	

</body>
</html>