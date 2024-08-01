<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Change Password</title>
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

								<strong style="font-weight: bold;"><h4>Change
										Password</h4></strong>
							</div>

							<!-- <h4>Hello! let's get started</h4>
							<h6 class="font-weight-light">Sign in to continue.</h6> -->
							<form class="pt-3" action="/matchDetails" method="post"
								onsubmit="return verify()">
								<div class="form-group">
									<input type="text" class="form-control form-control-lg"
										id="exampleInputUsername" placeholder="enter your username"
										name="username" value = "${user. getUserName() }">

									<div id="newPasswordErr" style="color: red"></div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-lg"
										id="exampleInputEmail1" placeholder="Enter your email id"
										name="email" value = "${user.getEmail() }">
									<div id="confirmPasswordErr" style="color: red"></div>
								</div>
								<!-- <div class="form-group">
									<input type="password" class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Password"
										name="password">
								</div> -->
<!-- 
								<div class="mt-3">
									<input type="button"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="Send OTP ">
								</div>

								<div class="form-group mt-3 ">
									<label for="exampleInputOTP">Enter OTP</label> <input
										type="number" class="form-control form-control-lg"
										id="exampleInputOTP" placeholder="Enter OTP" name="otp">
								</div>
 -->

								<div class="mt-3">
									<input type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="Send OTP ">
								</div>
								<!-- 	<div
									class="my-2 d-flex justify-content-between align-items-center">

									<a href="/forgotPassword" class="auth-link text-black">Forgot
										password?</a>
								</div> -->
								<!-- <div class="text-center mt-4 font-weight-light">
									Don't have an account? <a href="/register" class="text-primary">Create
										Now</a>
								</div> -->
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

	<script>
		function verify() {
			var newPassword = document.getElementById("username");
			var confirmPassword = document.getElementById("email");

			if (newPassword.value === '') {
				$("#newPasswordErr").html('Please enter new password');
				return false;
			} else if (confirmPassword.value === '') {
				$("#newPasswordErr").html('');
				$("#confirmPasswordErr").html('Please enter confirm password');
				return false;
			} else {
				$("#newPasswordErr").html('');
				$("#confirmPasswordErr").html('');
				return true;
			}
		}
	</script>
	<!-- endinject -->
</body>

</html>