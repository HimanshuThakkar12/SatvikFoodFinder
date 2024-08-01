<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  --%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Complains</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/validation.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/dataTables.bootstrap4.css">
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
					<div class="card">
						<div class="card-body">
							<h4 class="card-title contetCenter">Complain Table</h4>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>No</th>
													<th>Username</th>
													<th>Subject</th>
													<th>Description</th>
													<th>Attachment</th>
													<th>Complain Date</th>
													<th>Reply</th>
													<th>Reply by admin</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
												<c:forEach items="${complainList}" var="p" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td><c:if test="${p.loginVO.role  eq 'ROLE_VENDOR'}">
																<div style="cursor: pointer;"
																	class="badge badge-outline-primary badge-pill"
																	title="user">${p.loginVO.userName}</div>
															</c:if> <c:if test="${p.loginVO.role  eq 'ROLE_USER'}">
																<div style="cursor: pointer;"
																	class="badge badge-outline-danger badge-pill"
																	title="vendor">${p.loginVO.userName}</div>
															</c:if></td>

														<td>${p.complainSubject}</td>
														<td>${p.complainDescription}</td>


														<c:if test="${p.loginVO.role  eq 'ROLE_VENDOR'}">
															<td><a
																href="<%=request.getContextPath()%>/documents/vendorComplain/${p.fileName}"
																target="_blank"><i class="mdi mdi-attachment"
																	style="font-size: 20px; color: #ee4747; margin-left: 15px;"></i></a></td>
														</c:if>
														<c:if test="${p.loginVO.role  eq 'ROLE_USER'}">
															<td><a
																href="<%=request.getContextPath()%>/documents/userDetails/${p.fileName}"
																target="_blank"><i class="mdi mdi-attachment"
																	style="font-size: 20px; color: #ee4747; margin-left: 15px;"></i></a></td>
														</c:if>


														<td>${p.complainDateTime}</td>

														<c:if test="${p.complainStatus eq 'Pending'}">


															<td class="pr-0 text-left"><a
																href="replyComplains1?id=${p.id}"><button
																		class="badge badge-primary badge-pill">Reply</button></a></td>

														</c:if>
														<c:if test="${p.complainStatus ne 'Pending'}">
															<td><div class="badge badge-success">Resolved</div></td>
														</c:if>

														<td>${p.complainReplay}</td>
														<%-- deleteComplains?id=${p.id} --%>
														<td><a href="deleteComplains?id=${p.id}"><i
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