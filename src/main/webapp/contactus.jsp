<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-4">
				<div class="col-md-4 offset-md-4 text-center">
					<div class="text-success text-center">
						<i class="fa-solid fa-phone fa-3x "></i>
					</div>
					<h4>Help Line Number</h4>
					<h5>+91 1234567890</h5>
				</div>
			</div>

			<div class="col-md-4">
				<div class="col-md-4 offset-md-4 text-center">
					<div class="text-success text-center">
						<i class="fa-brands fa-whatsapp fa-3x"></i>
					</div>
					<h4>WhatsApp me On</h4>
					<h5>+91 1234567890</h5>
				</div>
			</div>

			<div class="col-md-4">
				<div class="col-md-4 offset-md-4 text-center">
					<div class="text-success text-center">
						<i class="fa-solid fa-envelope fa-3x"></i>
					</div>
					<h4>Email on.:</h4>
					<h5>
						<a href="mailto:someone@gmail.com">Send email</a>
					</h5>
				</div>
			</div>
		</div>

		<div class="row mt-5">
			<div class="col-md-3">
			
			</div>
	<!-- --------------------------------------------------------------------------------- -->
			<div class="col-md-6">
			<h3 class="text-center">Contact Me.:</h3>
				<form action="" method="">
					<div class="form-group">
						<input type="text" class="form-control" name="fname"
							placeholder="Your Name" required="required">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" name="email"
							placeholder="Your Email" required="required">
					</div>
					<div class="form-group">
						<input type="number" class="form-control" name="phno"
							placeholder="Your phone number" required="required">
					</div>
					<div class="form-group">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="Your Message"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
			
			<div class="col-md-3">
			</div>
		</div>
		
		<div class="row md-5 ">
			<div class="col-md-3"></div>
			<div class="col-md-6 text-center"><a href="index.jsp" class="btn btn-primary text-center">Home</a></div>
			<div class="col-md-3"></div>	
		</div>

		
	</div>
</body>
</html>