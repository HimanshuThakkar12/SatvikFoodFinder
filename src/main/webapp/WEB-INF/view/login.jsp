<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login Page</title>
<style>
</style>
<!-- base:css -->
<link rel="stylesheet"
	href="adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet" href="adminResourses/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="adminResourses/css/style.css">
<link rel="stylesheet" href="adminResourses/css/validation.css">
<link rel="shortcut icon" href="adminResourses/images/favicon.png" />
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">
					<!-- padding Y direction  py-5  -->
						<div class="auth-form-light text-left px-4 py-1 px-sm-5">
						<!-- brand-logo class commented-->
							<div class=" contetCenter">
								<!-- <img src="adminResourses/images/logo-dark.svg" alt="logo"> -->
								 <img src="adminResourses/images/satvikFood.jpg" style = "width:155px; height: 125px;"
									alt="logo">
								<!-- <h3 class = "text-center" style = "font-size: 25px;">Satvik Food Finder</h3> -->
							</div>
							<h4 class = "py-0">Hello! let's get started</h4>
							<h6 class="font-weight-light">Sign in to continue.</h6>
							<form class="pt-3" action="j_spring_security_check" method="post">
								<div class="form-group">
									<input type="text" class="form-control form-control-lg"
										id="exampleInputEmail1" placeholder="Username" name="username">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Password"
										name="password">
								</div>
								<div class="mt-3">
									<input type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="sign in">
								</div>
								<div
									class="my-2 d-flex justify-content-between align-items-center">

									<a href="/forgotPassword" class="auth-link text-black">Forgot
										password?</a>
								</div>
								<!-- 	<div class="text-center mt-4 font-weight-light">
									Don't have Vendor account? <a href="/VendorRegister"
										class="text-primary">Create Now</a>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Don't have user account? <a href="/UserRegister"
										class="text-primary">Create Now</a>
								</div>
 -->
							</form>
							<br> <br>
							<!-- 	<div class="text-center mt-4 font-weight-light">
								Don't have an account? <a href="/register" class="text-primary">Create
									Now</a>
							</div>
 -->
							<div class="container">
								<div class="row">
									<div class="col">
										<a href="/userRegister"><input type="button"
											class="btn  btn-primary  font-weight-medium auth-form-btn "
											value="Register as User"> </a>
									</div>
									<div class="col ">
										<a href="/vendorRegister"> <input type="button"
											class="btn  btn-primary font-weight-medium auth-form-btn "
											value="Register as Vendor">
										</a>
									</div>
								</div>
								
							</div>
							<div class = "py-4">
							</div>
							<!-- <div class="row"> -->
							<!-- <div class="col-md-6 grid-margin"> -->
							<!-- 
							Register as a vendor button -->
							<!-- <a href="/vendorRegister">
								<button type="submit" title="Create an Account"
									class="btn btn-primary btn-block btn-lg font-weight-medium auth-form-btn mt-4">

									<span><span>Register as a vendor</span></span>
								</button>
							</a> -->
							<!-- </div> -->


							<!-- 	<div class="col-md-6 grid-margin"> -->
							<!-- 
							Register as a user form  -->
							<!-- <a href="/userRegister">
								<button type="button" title="Create an Account"
									class="btn btn-primary btn-block btn-lg font-weight-medium auth-form-btn mt-4"
									onClick="">
									<span><span>Register as a User</span></span>
								</button>
							</a> -->
							<!-- 	</div> -->

							<!-- 	</div> -->
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