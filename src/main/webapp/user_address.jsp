<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #faf5f5;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					<h5 class="text-center text-primary p-1">Add Address</h5>
						<form action="" method="">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="address">Address</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>

								<div class="form-group col-md-6">
									<label for="landmark">Landmark</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
							</div>

							<div class="form-row">

								<div class="form-group col-md-4">
									<label for="city">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="State">State</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-4">
									<label for="zip">Pin Code</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							
							<div class="text-center">
								<button class="btn btn-warning text-white">
									Add Address
								</button>
							</div>
						</form>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>