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
<title>Vendor Ratings</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/dataTables.bootstrap4.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/validation.css">
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


				<div class="main-panel">
				<div class="content-wrapper">


					<div class="card">
						<div class="card-header card-title mt-0 ">
							<h4 class=" text-center"> Ratings From Users  </h4>
						</div>
						<div class="card-body">

							<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
							<c:forEach items="${vendorRatingList}" var="p" varStatus="j">

								<div class="d-flex align-items-start profile-feed-item">

									<img
										src="<%=request.getContextPath()%>/vendorResourses/images/avatar.png"
										alt="profile" class="img-sm rounded-circle">
									<div class="ml-4" style="width: 100%">
										
											
											<div style="float: right ;color: #FFD700" >
												<c:forEach var="s" begin="1" end="${p.vendorRating}">
															<i class="mdi mdi-star"></i>
														</c:forEach>
											</div>
											<h5 class="m-0">${p.userVO.username}</h5>
									
										Comment : ${p.comment}<br>
									</div>
								</div>

							</c:forEach>
						</div>
					</div>

					<%-- <div class="card">
						<div class="card-body">
							<h4 class="card-title">View Feedback</h4>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>NO</th>
													<th>User Name</th>
													<th>Feedback Description</th>
													<th>Rating</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
												<c:forEach items="${vendorRatingList}" var="p" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td><div style="cursor: pointer;" class="badge badge-outline-primary badge-pill" title="user">${p.loginVO.username}</div></td>	
														<td>${p.ratingSubject}</td>
														<td><fieldset class="rating">
														<c:forEach var="s" begin="1" end="${p.vendorRating}">
															<i class="mdi mdi-star"></i>
														</c:forEach>
														</fieldset>
														
														</td>
														<td><a href="deleteFeedback?id=${p.id}"><i
																class="mdi mdi-delete"
																style="font-size: 20px; color: #ee4747; margin-left: 15px;"></i></a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div> --%>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				 <jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				<%-- <jsp:include page="footer.jsp"></jsp:include> --%>

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
		src="<%=request.getContextPath()%>/adminResourses/js/jquery.dataTables.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>