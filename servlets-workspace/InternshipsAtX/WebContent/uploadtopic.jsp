<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Upload Topic</title>
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
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178 p-b-10" method="post" action="upload-topic" enctype="multipart/form-data">
					<span class="login100-form-title">
						Upload a topic now
					</span>

	
					<div class="text-red flex-col-c p-b-10">
						<p class="text-red" style="color:red;">${err_message}</p>
					</div>
					
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
						<input class="input100" type="text" name="topicTitle" placeholder="Topic title" value="${topicTitle}">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Please choose the program">
						<select name="programs" id="programs" class="input100">
				    		<option value="0" selected disabled hidden>Select a program</option>
						</select>
					</div>

					<div class="wrap-input100 validate-input m-b-25" data-validate = "Please choose the category">
					<select name="categories" id="categories" class="input100">
		    			<option value="-1" selected disabled hidden> Select a category </option>
		  			</select>
					</div>

					<div class="wrap-input100 validate-input m-b-5 class="input100">
					<p class="text-black"> <b> Please upload the PDf describing the internship offer. </b> </p>
					<input type="file" name="uploadFile" accept="application/pdf"/>
		  			<br><br>
					</div>


					<div class="container-login100-form-btn p-t-5">
						<button type="submit" class="login100-form-btn">
							Upload topic
						</button>
					</div>
				
				</form>
				<h1 class="easter-egg" style="visibility:hidden; font-size:0;">Remi Delacourt was here</h1> <!-- An easter-egg ! -->
			</div>
		</div>
	</div>
	
	
		
		<script>
		var data = new Map();
		var program_name_id = new Map();
		<c:forEach items="${programs}" var="program">
			var program_dict = [];
		    <c:forEach items="${program.getCategories()}" var="category">
		   	 program_dict.push({
		   		 key: "${category.getId()}",
		   		 value: "${category.getName()}"
		   	 });
		    </c:forEach>
		    program_name_id.set("${program.getId()}", "${program.getName()}" + " - " + "${program.getYear()}");
		    data.set("${program.getId()}", program_dict);
		</c:forEach>
		
		var programSel = document.getElementById("programs");
		var categorySel = document.getElementById("categories");
		window.onload = function() {
			data.forEach((value, key) => {
				programSel.options[programSel.options.length] = new Option(program_name_id.get(key), key);
			});
		}
		programSel.onchange = function(){
			categorySel.length = 1;
			categorySel.options[1] = new Option("--Select a category--", "0");
		    for (var i in data.get(this.value)) {
		   		categorySel.options[categorySel.options.length] = new Option(data.get(this.value)[i].value, data.get(this.value)[i].key);
		    }
		}
		</script>

    	

</body>
</html>