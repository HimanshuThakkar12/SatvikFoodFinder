<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update City</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResourses/css/vendor.bundle.base.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResourses/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResourses/images/favicon.png" />
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
						<div class="col-12">
					
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
								<h4 class="card-title">Update City Information</h4>
									<!-- <h4 class="card-title">Area Information</h4> -->
									<form action="updateCityData"  method="post" class="cmxform" >
										<fieldset>
										<div class="form-group">
												<label for="cityId">City ID</label> 
												<input id="id" class="form-control"
													name="cityId" minlength="2" type="text" value = " ${cityItem.getCityId() } " />
											</div>
											<div class="form-group">
												<label for="cityName">City Name</label> 
												<input id="name" class="form-control"
													name="cityName" minlength="2" type="text" value = " ${cityItem.getCityName() } " />
											</div>
										
											<div class="form-group">
												<label for="cityDescription">City Description</label>
												<textarea id="description" class="form-control" name="cityDescription">${cityItem.getCityDescription() }</textarea>
											</div>
											<input class="btn btn-primary" type="submit" value="Submit">
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							
					</div>
				</div>
 			<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
		<%-- 		
				<jsp:include page="footer.jsp"></jsp:include> --%>
				
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- base:js -->
	<script src="<%=request.getContextPath()%>/adminResourses/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="<%=request.getContextPath()%>/adminResourses/js/off-canvas.js"></script>
	<script src="<%=request.getContextPath()%>/adminResourses/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/adminResourses/js/template.js"></script>
	<script src="<%=request.getContextPath()%>/adminResourses/js/settings.js"></script>
	<script src="<%=request.getContextPath()%>/adminResourses/js/todolist.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script src="<%=request.getContextPath()%>/adminResourses/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResourses/js/bootstrap-maxlength.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script src="<%=request.getContextPath()%>/adminResourses/js/form-validation.js"></script>
	<script src="<%=request.getContextPath()%>/adminResourses/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->
</body>

</html>