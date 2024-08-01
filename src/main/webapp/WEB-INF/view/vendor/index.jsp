<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Index Page</title>
<!-- base:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/vendor.bundle.base.css">
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
					<div class="row">
						<div class="col-lg-12 grid-margin d-flex flex-column">
							<div class="row">
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-primary mb-4">
												<i class="mdi mdi-food mdi-36px"></i>
												<p class="font-weight-medium mt-2">Total Items</p>
											</div>
											<h1 class="font-weight-light">${totalItems}</h1>
										</div>
									</div>
								</div>
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-danger mb-4">
												<i class="mdi mdi-chart-pie mdi-36px"></i>
												<p class="font-weight-medium mt-2">Orders</p>
											</div>
											<h1 class="font-weight-light">${totalOrder}</h1>
										</div>
									</div>
								</div>
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-info mb-4">
												<i class="mdi mdi-star mdi-36px"></i>
												<p class="font-weight-medium mt-2">Total Rating</p>
											</div>
											<h1 class="font-weight-light">${totalRating}</h1>
										</div>
									</div>
								</div>
								<div class="col-md-3 grid-margin stretch-card">
									<div class="card">
										<div class="card-body text-center">
											<div class="text-success mb-4">
												<i class="mdi mdi-star mdi-36px"></i>
												<p class="font-weight-medium mt-2">Average Rating</p>
											</div>
											<h1 class="font-weight-light">${averageRating}/5</h1>
										</div>
									</div>
								</div>
								
								<div class="row flex-grow-1">
									<div
										class="col-lg-12 grid-margin grid-margin-lg-0 stretch-card">
										<div class="card">
											<div class="card-body">

												<div id="container"
													style="min-width: 310px; height: 400px; margin: 0 auto"></div>

												<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

												<c:forEach items="${graphData}" var="i">
													<c:forEach items="${i}" var="j" varStatus="k">
														<c:if test="${k.count eq 1 }">
															<input type="hidden" name="yvalue" value="${j}" />
														</c:if>
														<c:if test="${k.count eq 2 }">
															<input type="hidden" name="xvalue" value="${j}" />
														</c:if>


													</c:forEach>
												</c:forEach>
											</div>
										</div>
									</div>

								</div>  
							</div>
							
						</div>

					</div>


				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->

				<jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>

		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->

	<!-- container-scroller -->

	<!-- base:js -->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
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
		src="<%=request.getContextPath()%>/adminResourses/js/progressbar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/jquery.flot.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/jquery.flot.resize.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/Chart.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/chart.flot.sampledata.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/dashboard.sampledata.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/patternomaly.js"></script>
		<script
		src="<%=request.getContextPath()%>/adminResourses/js/highcharts.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResourses/js/dashboard.js"></script>
	<!-- End custom js for this page-->
	
	<script>
		var xvalue = document.getElementsByName("xvalue");
		var xdata = [];
		var yvalue = document.getElementsByName("yvalue");
		var ydata = [];
		for (var i = 0; i < xvalue.length; i++) {
			
			var month = '';
			if(xvalue[i].value === '01'){
				month = 'January';
			}else if(xvalue[i].value === '02'){
				month = 'February';
			}else if(xvalue[i].value === '03'){
				month = 'March';
			}else if(xvalue[i].value === '04'){
				month = 'April';
			}else if(xvalue[i].value === '05'){
				month = 'May';
			}else if(xvalue[i].value === '06'){
				month = 'June';
			}else if(xvalue[i].value === '07'){
				month = 'July';
			}else if(xvalue[i].value === '08'){
				month = 'August';
			}else if(xvalue[i].value === '09'){
				month = 'September';
			}else if(xvalue[i].value === '10'){
				month = 'October';
			}else if(xvalue[i].value === '11'){
				month = 'November';
			}else if(xvalue[i].value === '13'){
				month = 'December';
			}
			
			xdata.push(month);
			ydata.push(parseFloat(yvalue[i].value));
		}
		Highcharts.chart({
			chart : {
				renderTo : "container",
				type : 'column'
			},
			title : {
				text : 'Monthly Orders'
			},
			xAxis : {
				categories : xdata,
				crosshair : true
			},
			yAxis : {
				min : 0,
				title : {
					text : 'Orders'
				}
			},
			plotOptions : {
				column : {
					pointPadding : 0.2,
					borderWidth : 0
				}
			},
			series : [ {
				name : 'Months',
				data : ydata,
				color : '#423898'

			} ]
		});
	</script>
</body>

</html>