<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="edu.polytechnique.inf553.Person"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="stylesheet" type="text/css" href="css/table.css">
<!--===============================================================================================-->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<!--===============================================================================================-->
</head>
<style>
.mul-select{
	width:100%;
	height:auto !important;
}
.select2-container .select2-selection--multiple .select2-selection__rendered{
	display:block;
}
.select2-container--default .select2-selection--multiple{
	position:relative;
}
.select2-container .select2-search--inline {
	position:absolute;
	right:0;
	top:0
}
.select2-container--default .select2-selection--multiple .select2-selection__rendered li{
	margin: 5px 0px 0px 5px;
}
</style>
<body>

	<nav class="navbar navbar-dark bg-dark">
	  <div class="container-fluid justify-content-start">
	    <a class="navbar-brand" href="/InternshipsAtX/dashboard">
	      <img src="images/logo.png" style="max-height: 35px;">
	      Internship Management
	    </a>
	    <div class="ml-auto d-flex">
	        <div class="nav-item dropdown">
	          <a class="text-white dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            ${user.role}: ${user.name}
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="right:0;left:auto;">
	            ${ (user.role == "Admin") ? '<li><a class="dropdown-item" href="./user-management">User management</a></li>' : '' }
	            ${ (user.role == "Admin" || user.role == "Professor") ? '<li><a class="dropdown-item" href="./program-management">Program management</a></li>' : '' }
	            ${ (user.role == "Admin" || user.role == "Assistant" || user.role == "Professor") ? '<li><a class="dropdown-item" href="./subject-validation">Subject validation</a></li>' : '' }
	            ${ (user.role == "Admin" || user.role == "Professor") ? '<li><a class="dropdown-item" href="./subject-management">Subject management</a></li>' : '' }
	            ${ (user.role == "Admin" || user.role == "Professor") ? '<li><a class="dropdown-item" href="./subject-attribution">Subject attribution</a></li>' : '' }
	            ${ (user.role == "Admin" || user.role == "Assistant") ? '<li><a class="dropdown-item" href="./subject-deletion">Subject deletion</a></li>' : '' }
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="./LogoutServlet">Log out</a></li>
	          </ul>
	        </div>
	    </div>
	  </div>
	</nav>
	
	<div class="limiter">
		<div class="container-login100 background_style">
			<div class="wrap-login100-V2">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178">
					<span class="login100-form-title">
						<h1> Subject Management </h1>
					</span>
					
					<div class="text-center">
						<ul class="responsive-table">
							<li class="table-header">
								<div class="col col-4"> Student </div>
								<div class="col col-4"> Subject </div>
								<div class="col col-4"> Assign </div>
							</li>
							<li class="table-row">
								<div class="col col-4">
									<select class="js-example-basic-single" name="student" id="selectStudent">
										<c:forEach items="${students}" var="student">
											<option value="${student.id}">${student.name}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col col-4">
									<select class="js-example-basic-single" name="subject" id="selectSubject">
										<c:forEach items="${subjects}" var="subject">
											<option value="${subject.id}">${subject.title}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col col-4">
									<button type="button" class="btn btn-primary ml-3" onclick="assignStudentToSubject();">Assign</button>
								</div>
							</li>
							
						</ul>
					</div>
				</form>
				

			</div>
		</div>
	</div>
	
<script>
function assignStudentToSubject(){
	studentId = document.getElementById("selectStudent").value;
	subjectId = document.getElementById("selectSubject").value;
	$.ajax({
        type : "GET",
        url : "AssignStudentSubjectServlet",
        data : "studentId=" + studentId + "&subjectId=" + subjectId,
        success : function(data) {
        	console.log("assigned studentId " + studentId + " to subjectId " + subjectId)
        	location.reload();
        },
        error: function(res){
        	alert("Failed to update subject category.");
        	location.reload();
        }
    });
}

</script>



</body>
</html>