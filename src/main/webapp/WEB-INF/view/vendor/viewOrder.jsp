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
<title>view Order Information</title>
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


			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="card">
						<div class="card-header">
							<h4 class="card-title contetCenter">view Order</h4>
						</div>


						<div class="card-body mt-0">
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">

										<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>No.</th>
													<th>Order Id</th>
													<th>Email</th>
													<th>Name</th>
													<th>Contact no</th>
													<th>Order Date</th>
													<!-- <th>Details</th> -->
													<th>Status</th>
													
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${orderList}" var="p" varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td>${p.orderId}</td>
														<td>${p.email}</td>
														<td>${p.userName}</td>
														<td>${p.contactno}</td>
														<td>${p.orderDate}</td>
														<%-- <td><a onclick="viewOrderDetails(${p.orderId})"><i
																class="mdi mdi-eye" style="cursor: pointer;"
																title="view order"></i></a></td>
														<td> --%>
														<td>
														<c:if test="${p.status eq 'false' }">
																<div class="badge badge-danger">Not Delivered</div>
															</c:if> <c:if test="${p.status eq 'true' }">
																<div class="badge badge-success">Delivered</div>
															</c:if> <%-- <c:if test="${p.orderStatus eq 'REJECTED' }">
																<div class="badge badge-warning">REJECTED</div>
															</c:if> --%>
															<%-- <c:if test="${p.orderStatus eq 'ORDERED' }">
																<div class="badge badge-info">ORDERED</div>
															</c:if> <c:if test="${p.orderStatus eq 'ACCEPTED' }">
																<div class="badge badge-success">ACCEPTED</div>
															</c:if> <c:if test="${p.orderStatus eq 'REJECTED' }">
																<div class="badge badge-warning">REJECTED</div>
															</c:if> --%>
															</td>
														  <td><c:if test="${p.status eq 'false' }">
																<a href="acceptOrder?orderId=${p.orderId}"><button
																		class="badge badge-success badge-pill">Deliver</button></a>
																<%-- <a href="rejectOrder?orderId=${p.orderId}"><button
																		class="badge badge-danger badge-pill">Reject</button></a> --%>
															</c:if></td> 

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
	
	<script type="text/javascript">
	function viewOrderDetails(id) {
		
		var tiffinBodyId = document.getElementById("dishTableMenu");
		//tiffinBodyId.innerHTML = '';
		var htp = new XMLHttpRequest();

		htp.onreadystatechange = function() {
			if (htp.readyState == 4) {
				var jsn = JSON.parse(htp.responseText);
				var data = '';

				
				for(var index  = 0 ; index <jsn.length ; index++){
					console.log(index);
					data = data + '<tr><td>'+ (index+1) +'</td><td>'+jsn[index].days+'</td>'+
									'<td>'+jsn[index].mealVO.mealType+'</td>'+
									'<td>'+jsn[index].ordervo.id+'</td></tr>';
				}
				
				tiffinBodyId.innerHTML = data;
				
				$("#myModal").modal("toggle");
				//orderRequest = request;
			}
		}

		htp.open("get", "viewOrderDetailsByOrder?id=" + id, true);
		htp.send();

	}
	</script>
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