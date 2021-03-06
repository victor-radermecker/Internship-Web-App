<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Download</title>
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
			<div class="wrap-login100-V2">


					<form class="login100-form validate-form p-l-55 p-r-55 p-t-178">
						<span class="login100-form-title">
							<h1>Download page of "${subjectTitle}.pdf"</h1>
						</span>
					</form>
					
					<form>
						<span class="subtitle" style="color:black;"> <h4> <br> <br> Did not work ? <br> 
						<a class="subtitle" style="color:black;" href="/InternshipsAtX/download-subject?internshipId=${internshipId}">Try again here</a>
						 </h4> <br> <br> </span>
					</form>
					
				
			</div>
		</div>
	</div>

		<script>
		window.onload = function() {
			base64toPDF("${encodedContent}", "${subjectTitle}");
		}
		
		function base64toPDF(data, subjectTitle) {
		    var bufferArray = base64ToArrayBuffer(data);
		    var blobStore = new Blob([bufferArray], { type: "application/pdf" });
		    if (window.navigator && window.navigator.msSaveOrOpenBlob) {
		        window.navigator.msSaveOrOpenBlob(blobStore);
		        return;
		    }
		    var data = window.URL.createObjectURL(blobStore);
		    var link = document.createElement('a');
		    document.body.appendChild(link);
		    link.href = data;
		    link.download = subjectTitle.concat(".pdf");
		    link.click();
		    window.URL.revokeObjectURL(data);
		    link.remove();
		}

		function base64ToArrayBuffer(data) {
		    var bString = window.atob(data);
		    var bLength = bString.length;
		    var bytes = new Uint8Array(bLength);
		    for (var i = 0; i < bLength; i++) {
		        var ascii = bString.charCodeAt(i);
		        bytes[i] = ascii;
		    }
		    return bytes;
		};
		
		</script>

    </body>
</html>
