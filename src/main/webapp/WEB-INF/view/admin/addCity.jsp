<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>City Information</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/validation.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResourses/images/favicon.png" />
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->


		<jsp:include page="header.jsp"></jsp:include>


		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Add City</h4>
									<form action="saveCity" class="cmxform" method="post" id="saveCity">
										<fieldset>
											<div class="form-group">
												<label for="cityName">City Name</label> <input id="Name"
													class="form-control" name="cityName" minlength="2"
													type="text">
											</div>
											<div class="form-group">
												<label for="cityDescription">City Description</label>
												<textarea id="Description" class="form-control"
													name="cityDescription"></textarea>
											</div>
											<input class="btn btn-primary" type="submit" value="Add">
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				<jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- base:js -->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/todolist.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/bootstrap-maxlength.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"
		integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		jQuery('#saveCity').validate({
			rules : {
				cityName : "required",
				cityDescription : "required"
			},
			messages : {
				cityName : "*Please Enter city Name",
				cityDescription : "*Please Enter city Description"
			}
		});
		 
		function toggleManage(){
			
			document.getElementById("satvikFoodFinder").style.visibility = "hidden";
		}
	</script>
</body>

</html>