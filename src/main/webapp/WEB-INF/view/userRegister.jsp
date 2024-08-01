<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Register Page</title>
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
<link rel="shortcut icon" href="adminResourses/images/favicon.png" />
<link rel="stylesheet" href="adminResourses/css/validation.css">
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">

						<div class="auth-form-light text-left py-5 px-4 px-sm-5">
							<div class="forogtPassword contetCenter">

								<strong style="font-weight: bold;"><h4>User
										Registration</h4></strong>
							</div>
							<div class="brand-logo">
								<!-- 	<img src="adminResourses/images/logo-dark.svg" alt="logo"> -->

							</div>

							<!-- <h4>New here?</h4>
							<h6 class="font-weight-light">Signing up is easy. It only
								takes a few steps</h6> -->
							<form class="pt-3" action="/saveUserData" method="post">
								<div class="form-group">
									<input type="text" class="form-control form-control-lg"
										name="username" id="exampleInputUsername1"
										placeholder="Username" required>
									<div class="form-group">
										<input type="password"
											class="form-control form-control-lg mt-3" name="password"
											id="exampleInputPassword1" placeholder="Password" required>
									</div>
									<div class="form-group">
										<input type="email" name="email"
											class="form-control form-control-lg" id="exampleInputEmail1"
											placeholder="Email" required>
									</div>
									<div class="form-group">
										<select class="form-control form-control-lg"
											id="exampleFormControlSelect2" name="gender">
											<option selected disabled>Gender</option>
											<option value="male">Male</option>
											<option value="female">Female</option>


											<!-- 	<option>United Kingdom</option>
										<option>India</option>
										<option>Germany</option>
										<option>Argentina</option> -->
										</select>
									</div>

								</div>
								<!-- 	<div class="mb-4">
									<div class="form-check">
										<label class="form-check-label text-muted "> <input
											type="checkbox" class="form-check-input"> I agree to
											all Terms & Conditions
										</label>
									</div>
								</div> -->
								<!-- <div class="mt-3">
									<a
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										href="../../index.html">SIGN UP</a>
								</div> -->

								<div class="mt-3">
									<input type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="Register here ">
								</div>
								<!-- 	
								<div class="text-center mt-4 font-weight-light">
									Already have an account? <a href="/" class="text-primary">Login</a>
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
	<!-- endinject -->
</body>

</html>
