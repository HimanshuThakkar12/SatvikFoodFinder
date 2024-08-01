<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add Food</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/validation.css">
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

			<div class="main-panel">
				<div class="content-wrapper">
					<!-- <div class="card-title mt-0 "> -->
					<!-- <h4 class=" text-center"> Ratings From Users  </h4> -->
					<h4 class="card-title contetCenter pb-4" style="color: #001737; font-weight: 500;">Add Food Menu</h4>
					<!-- </div> -->

					<form action="addMenu" class="cmxform" method="post">

						<div class="form-group row "
							style="color: #001737; font-weight: 500;">
							<label for="inputDay" class="col-sm-2 mt-1 ">Select Day</label>
							<div class="col-sm-10">
								<select class="form-control " id="inputDay" name="day" required>

									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>

								</select>
							</div>
						</div>

						<div class="form-group row "
							style="color: #001737; font-weight: 500;">
							<label for="category" class="col-sm-2 mt-1 ">Select
								Category</label>
							<div class="col-sm-10">
								<select class="form-control " id="category" name="category"
									required>

									<option value="Breakfast">Breakfast</option>
									<option value="Brunch">Brunch</option>
									<option value="Lunch">Lunch</option>
									<option value="Dinner">Dinner</option>


								</select>
							</div>
						</div>

						<div class="form-group row"
							style="color: #001737; font-weight: 500;">
							<label for="dishName" class="col-sm-2 col-form-label">Dish
								Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="dishName"
									placeholder="Enter Dish Name" name="dishName">
							</div>
						</div>

						<div class="form-group row"
							style="color: #001737; font-weight: 500;">
							<label for="dishPrice" class="col-sm-2 col-form-label">Dish
								Price</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="dishPrice"
									placeholder="Enter Dish Price" name="dishPrice">
							</div>
						</div>
						<div class="form-group row"
							style="color: #001737; font-weight: 500;">
							<label for="time" class="col-sm-2 col-form-label">Starting
								Time</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="time"
									placeholder="Start Time" name="startTime">
							</div>
							<label class="col-form-label"> TO </label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="time"
									placeholder="End Time" name="endTime">
							</div>
						</div>

						<div class="form-group row"
							style="color: #001737; font-weight: 500;" >
							<div class="col-sm-10 text-center">
								<button type="submit" class="btn btn-primary">Add Dish</button>
							</div>
						</div>

					</form>
				</div>
				<jsp:include page="footer.jsp"></jsp:include>
			</div>

		</div>

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
	<script `			src="https://code.jquery.com/jquery-3.6.3.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"
		integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		jQuery('#saveArea').validate({
			rules : {
				areaName : "required",
				areaDescription : "required",
				areaPincode : "required"
			},
			messages : {
				areaName : "*Please Enter area Name",
				areaDescription : "*Please Enter area Description",
				areaPincode : "*Please Enter Area Pincocde"
			}
		});
	</script>
</body>

</html>