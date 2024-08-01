<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update Food</title>
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

					<h4 class="card-title contetCenter pb-4 " style = "font-family: 'Arial';">Update Food Menu</h4>

					<!-- <div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="inputEmail3"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="Password">
						</div>
					</div> -->

					<form action="updateFoodMenu" class="cmxform" method="POST">
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-2 col-form-label">Menu
								ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3"
									name="foodID" placeholder="Menu IF"
									value=" ${foodItem.getFoodID() } " readonly="readonly">
							</div>
						</div>
						<div class="form-group row ">
							<label for="inputDay" class="col-sm-2 mt-1 ">Select Day</label>
							<div class="col-sm-10">
								<select class="form-control " id="inputDay" name="day" required>

									<c:if test="${foodItem.getDay() == 'Monday'}">
										<option value="Monday" selected="selected">Monday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Monday'}">
										<option value="Tuesday">Tuesday</option>
										<option value="Wednesday">Wednesday</option>
										<option value="Thursday">Thursday</option>
										<option value="Friday">Friday</option>
										<option value="Saturday">Saturday</option>
										<option value="Sunday">Sunday</option>
									</c:if>

									<c:if test="${foodItem.getDay() == 'Tuesday'}">
										<option value="Tuesday" selected="selected">Tuesday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Tuesday'}">
										<option value="Monday">Monday</option>
										<option value="Wednesday">Wednesday</option>
										<option value="Thursday">Thursday</option>
										<option value="Friday">Friday</option>
										<option value="Saturday">Saturday</option>
										<option value="Sunday">Sunday</option>
									</c:if>

									<c:if test="${foodItem.getDay() == 'Wednesday'}">
										<option value="Wednesday" selected="selected">Wednesday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Wednesday'}">
										<option value="Monday">Monday</option>
										<option value="Tuesday">Tuesday</option>
										<option value="Thursday">Thursday</option>
										<option value="Friday">Friday</option>
										<option value="Saturday">Saturday</option>
										<option value="Sunday">Sunday</option>
									</c:if>

									<c:if test="${foodItem.getDay() == 'Thursday'}">
										<option value="Thursday" selected="selected">Thursday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Thursday'}">
										<option value="Monday">Monday</option>
										<option value="Tuesday">Tuesday</option>
										<option value="Wednesday">Wednesday</option>
										<option value="Friday">Friday</option>
										<option value="Saturday">Saturday</option>
										<option value="Sunday">Sunday</option>
									</c:if>

									<c:if test="${foodItem.getDay() == 'Friday'}">
										<option value="Friday" selected="selected">Friday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Friday'}">
										<option value="Monday">Monday</option>
										<option value="Tuesday">Tuesday</option>
										<option value="Wednesday">Wednesday</option>
										<option value="Thursday">Thursday</option>
										<option value="Saturday">Saturday</option>
										<option value="Sunday">Sunday</option>
									</c:if>

									<c:if test="${foodItem.getDay() == 'Saturday'}">
										<option value="Saturday" selected="selected">Saturday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Saturday'}">
										<option value="Monday">Monday</option>
										<option value="Tuesday">Tuesday</option>
										<option value="Wednesday">Wednesday</option>
										<option value="Thursday">Thursday</option>
										<option value="Friday">Friday</option>
										<option value="Sunday">Sunday</option>
									</c:if>


									<c:if test="${foodItem.getDay() == 'Sunday'}">
										<option value="Sunday" selected="selected">Sunday</option>
									</c:if>
									<c:if test="${foodItem.getDay() == 'Sunday'}">
										<option value="Monday">Monday</option>
										<option value="Tuesday">Tuesday</option>
										<option value="Wednesday">Wednesday</option>
										<option value="Thursday">Thursday</option>
										<option value="Friday">Friday</option>
										<option value="Saturday">Saturday</option>

									</c:if>


								</select>
							</div>
						</div>

						<div class="form-group row ">
							<label for="category" class="col-sm-2 mt-1 ">Select
								Category</label>
							<div class="col-sm-10">
								<select class="form-control " id="category" name="category"
									required>
									<c:if test="${foodItem.getCategory() == 'Breakfast'}">
										<option value="Breakfast" selected="selected">Breakfast</option>
									</c:if>
									<c:if test="${foodItem.getCategory() == 'Breakfast'}">
										<option value="Brunch">Brunch</option>
										<option value="Lunch">Lunch</option>
										<option value="Dinner">Dinner</option>

									</c:if>
									<c:if test="${foodItem.getCategory() == 'Brunch'}">
										<option value="Brunch">Brunch</option>
									</c:if>
									<c:if test="${foodItem.getCategory() == 'Brunch'}">
										<option value="Lunch">Lunch</option>
										<option value="Breakfast">Breakfast</option>
										<option value="Dinner">Dinner</option>

									</c:if>

									<c:if test="${foodItem.getCategory() == 'Lunch'}">
										<option value="Lunch">Lunch</option>
									</c:if>
									<c:if test="${foodItem.getCategory() == 'Lunch'}">
										<option value="Brunch">Brunch</option>
										<option value="Breakfast">Breakfast</option>
										<option value="Dinner">Dinner</option>

									</c:if>
									<c:if test="${foodItem.getCategory() == 'Dinner'}">
										<option value="Dinner">Dinner</option>
									</c:if>
									<c:if test="${foodItem.getCategory() == 'Dinner'}">
										<option value="Brunch">Brunch</option>
										<option value="Breakfast">Breakfast</option>
										<option value="Lunch">Lunch</option>

									</c:if>



								</select>

							</div>
						</div>

						<div class="form-group row">
							<label for="dishName" class="col-sm-2 col-form-label">Dish
								Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="dishName"
									placeholder="Enter Dish Name" name="dishName"
									value=" ${foodItem.getDishName() } ">
							</div>
						</div>

						<div class="form-group row">
							<label for="dishPrice" class="col-sm-2 col-form-label">Dish
								Price</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="dishPrice"
									placeholder="Enter Dish Price" name="dishPrice"
									value=" ${foodItem.getDishPrice() } ">
							</div>
						</div>
						<div class="form-group row">
							<label for="time" class="col-sm-2 col-form-label">Starting
								Time</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="time"
									placeholder="Start Time" name="startTime"
									value=" ${foodItem.getStartTime() } ">
							</div>
							<label class="col-form-label"> TO </label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="time"
									placeholder="End Time" name="endTime"
									value=" ${foodItem.getEndTime() } ">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-sm-10 text-center">
								<button type="submit" class="btn btn-primary">Update
									Dish</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- partial -->
	<%-- 	<div class="main-panel">
				<div class="content-wrapper">
					<div class="row grid-margin">
						<div class="col-12">

							<div class="row grid-margin">
								<div class="col-lg-12">
									<div class="card">
										<div class="card-body">
											<h4 class="card-title contetCenter">Add Food Menu</h4>
											<form action="saveArea" class="cmxform" method="post"
												id="saveArea">
												<fieldset>


													<div class="form-group"></div>

													<div class="form-group ">
														<label for="day">Select Day</label> <select
															class="form-control form-control-lg pl-3" id="daysa"
															name="day" required>

															<option value="Monday">Monday</option>
															<option value="Tuesday">Tuesday</option>
															<option value="Wednesday">Wednesday</option>
															<option value="Thursday">Thursday</option>
															<option value="Friday">Friday</option>
															<option value="Saturday">Saturday</option>
															<option value="Sunday">Sunday</option>

														</select>
													</div>
													<div class="form-group">
														<label for="cityName">city Name</label> <input
															id="cityName" class="form-control" name="cityName"
															minlength="2" type="text">
													</div>

													<div class="form-group">
														<label for="areaPincode">Area Pincode</label> <input
															id="Pincode" class="form-control" name="areaPincode"
															minlength="2" type="number">
													</div>
													<div class="form-group">
														<label for="areaDescription">Area Description</label>
														<textarea id="description" class="form-control"
															name="areaDescription"></textarea>
													</div>


													<input class="btn btn-primary" type="submit" value="Submit">
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12"></div>
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
				</div> --%>
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
</body>

</html>