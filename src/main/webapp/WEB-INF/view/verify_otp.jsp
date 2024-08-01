<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update Password</title>
<!-- base:css -->
<link rel="stylesheet"
	href="adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet" href="adminResourses/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="adminResourses/css/style.css">
<!-- endinject -->
<link rel="stylesheet" href="adminResourses/css/validation.css">
<!-- endinject -->
<link rel="shortcut icon" href="adminResourses/images/favicon.png" />
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left py-5 px-4 px-sm-5">

							<!-- 		Satvik Food Logo -->

							<!-- <div class="brand-logo">
								<img src="adminResourses/images/logo-dark.svg" alt="logo">
							</div> -->
							<div class="forogtPassword contetCenter">

								<strong style="font-weight: bold;"><h4>Verify OTP</h4></strong>
							</div>
							<div class="alert alert-success mt-3" role="alert">we Have Sent OTP to Your Mail Successfully</div>

							<!-- <h4>Hello! let's get started</h4>
							<h6 class="font-weight-light">Sign in to continue.</h6> -->
							<form class="" action="/updatePassword" method="post">
							

								<div class="form-group mt-3 ">
									<!-- 	<label for="exampleInputOTP">Enter OTP</label> -->
									<input type="number" class="form-control form-control-lg"
										id="exampleInputOTP" placeholder="Enter OTP" name="otp">
								</div>
										
								<div class="mt-3">
									<input type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="Verify OTP">
								</div>
								
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- base:js -->
	<script src="adminResourses/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="adminResourses/js/off-canvas.js"></script>
	<script src="adminResourses/js/hoverable-collapse.js"></script>
	<script src="adminResourses/js/template.js"></script>
	<script src="adminResourses/js/settings.js"></script>
	<script src="adminResourses/js/todolist.js"></script>

	<!-- endinject -->
</body>

</html>