<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vendor Register</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResourses/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResourses/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendorResourses/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/vendorRsesourses/images/favicon.png" />
</head>
<body class="sidebar-light">

	<div class="container-scroller">

		<jsp:include page="header.jsp"></jsp:include>


		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->


			<jsp:include page="menu.jsp"></jsp:include>

			<div class="container mt-5">
				<h4 class="text-center">Vendor Registrations</h4>
				<form class="cmxform " id="commentForm" method="get" action="#">
					<fieldset>
						<div class="form-group mt-3">
							<label for="cname">Name</label> <input id="cname"
								class="form-control" name="name" minlength="2" type="text"
								required>
						</div>
						<div class="form-group mt-3">
							<label for="cname">Name</label> <input id="cname"
								class="form-control" name="name" minlength="2" type="text"
								required>
						</div>
						<div class="form-group mt-3">
							<label for="cname">Name</label> <input id="cname"
								class="form-control" name="name" minlength="2" type="text"
								required>
						</div>

						<div class="form-group mt-3">
							<label for="cname">Name</label> <input id="cname"
								class="form-control" name="name" minlength="2" type="text"
								required>
						</div>
						<div class="form-group mt-3">
							<label for="cname">Name</label> <input id="cname"
								class="form-control" name="name" minlength="2" type="text"
								required>
						</div>
						<div class="form-group">
							<label for="cemail">E-Mail</label> <input id="cemail"
								class="form-control" type="email" name="email" required>
						</div>
						<div class="form-group">
							<label for="curl">URL</label> <input id="curl"
								class="form-control" type="url" name="url">
						</div>
						<div class="form-group">
							<label for="ccomment">Your comment</label>
							<textarea id="ccomment" class="form-control" name="comment"
								required></textarea>
						</div>
						<div class="button text-center">
							<input class="btn btn-primary " type="submit"
								value="Register YourSelf">
						</div>

					</fieldset>
				</form>
			</div>


		</div>
		<%-- 	<jsp:include page="footer.jsp"></jsp:include> --%>
	</div>


	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/todolist.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/bootstrap-maxlength.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/vendorResourses/js/bt-maxLength.js"></script>
</body>
</html>