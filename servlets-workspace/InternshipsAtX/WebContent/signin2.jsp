<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V8</title>
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
	
	<div class="limiter">
		<div class="container-login100 background_style">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" method="post" action="signin">
					<span class="login100-form-title">
						Register now
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter your email">
						<input class="input100" type="text" name="firstName" placeholder="First Name" value="${firstName}">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter your email">
						<input class="input100" type="text" name="lastName" placeholder="Last Name" value="${lastName}">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter your email">
						<input class="input100" type="text" name="email" placeholder="Email" value="${email}">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please confirm your email">
						<input class="input100" type="text" name="confirmEmail" placeholder="Confirm Email" value="${confirmEmail}">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Please enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Please confirm password">
						<input class="input100" type="password" name="confirmPass" placeholder="Confirm password">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Please choose your role">
			
						<select name="role" class="input100" >
	        				<option value="" selected disabled hidden>--Please choose a role--</option>
	        				<option value="admin">Admin</option>
	        				<option value="assistant">Assistant</option>
	        				<option value="professor">Professor</option>
	        				<option value="proponent">Proponent</option>
	        				<option value="student">Student</option>
	        			</select>
					</div>


					<div class="wrap-input100 validate-input">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn p-t-40">
						<button type="submit" class="login100-form-btn">
							Sign in
						</button>
					</div>
					
					<div class="text-red flex-col-c p-t-100 p-b-40">
						<p class="text-red" style="color:red;">${err_message}</p>
					</div>
					
				</form>
				
			</div>
		</div>
	</div>
	
	

</body>
</html>