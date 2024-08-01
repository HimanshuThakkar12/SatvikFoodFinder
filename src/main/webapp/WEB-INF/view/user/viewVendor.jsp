<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Satvik Food Finder</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
<link rel="icon" href="#" type="image/x-icon">
<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/revslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/responsive.css"
	media="all">

<link href="<%=request.getContextPath()%>/userResources/css/css1.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css2.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css3.css"
	rel='stylesheet' type='text/css'>
<link href="<%=request.getContextPath()%>/userResources/css/css4.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/userResources/css/validation.css"
	rel="stylesheet">


<!-- BEGIN GOOGLE ANALYTICS CODEs -->

</head>
<body>
	<div id="page">
		<div class="top-section">
			<div class="container" style="height: 384px;">
				<jsp:include page="header.jsp"></jsp:include>


				<div class="search-container my-3">

					<!-- <div class="inputText"> -->
					<input type="text" id="search-input" onkeyup="search()"
						class="form-control" placeholder="Search by City" />
					<!-- 
						<button type="submit" class="btn btn-success">Search</button>
 -->
					<!-- 		</div> -->


					<div class="search-result">

						<!--   result goes here -->

					</div>

				</div>



				<div class="col-lg-7">
					<div class="page-heading">

						<!--container-->

					</div>
				</div>
				<div class="container">
					<div class="inside-header">
						<div class="container">

							<div class="row">

								<div class="breadcrumbs">
									<div class="row">col-xs-12</div>
									row
								</div>
								<div class="page-title">
									<!-- <h2>Vendor</h2> -->
								</div>
							</div>
						</div>
					</div>
					<!-- search -->


				</div>
			</div>
		</div>
		<!-- BEGIN Main Container col2-left -->
		<section class="main-container col2-left-layout bounceInUp animated">
			<div class="container">
				<div class="row">
					<div class="col-main col-sm-12 product-grid">



						<div class="pro-coloumn">
							<article>
								<div class="category-products" id="mainContainer">
									<ul class="products-grid">


										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


										<c:forEach items="${vendorList}" var="p" varStatus="j">

											<li class="item col-lg-3 col-md-3 col-sm-3 col-xs-6">
												<div class="item-inner">
													<div class="item-img">
														<div class="item-img-info">
															<a href="#" title="Vendor" class="product-image"><img
																src="<%=request.getContextPath()%>/userResources/images/vendor.jpg"
																alt="sample dish"></a>
															<!-- <div class="new-label new-top-left">Hot</div>-->
															<%-- <%=request.getContextPath()%>/user/vendorRating?id=${p.id} --%>
															<a href="#"><div style="cursor: pointer;"
																	class="sale-label sale-top-left">Rate Me</div> </a>
														</div>
														<div class="add_cart">
															<a
																href="<%=request.getContextPath()%>/user/viewVendorDetails?id=${p.id}"><button
																	style="margin-left: 18px;" class="button btn-cart"
																	type="button">
																	<span>Details</span>
																</button></a>
														</div>
														<div class="wishlist-block">
															<div class="rating"></div>
														</div>
													</div>
													<div class="item-info">
														<div class="info-inner m-0 p-0">
															<div class="item-title">
																<a href="#" title="">${p.userName}</a> <a href="#"
																	title="">${p.areaName}</a> <a href="#" title="">${p.cityName}</a>


															</div>
															<br>



															<div class="item-content">
																<div class="item-price">
																	<div class="price-box">
																		<!-- <span class="regular-price"><span class="price">$125.00</span>
																		</span> -->
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="restuarent" style="padding: 10px 60px 60px 0px">
														<div class="my-order">
															<%-- <%=request.getContextPath()%>/user/viewVendorDetails?id=${p.id}  order?id=${p.loginvo.userID} --%>
															<a href="viewVendorDetails?id=${p.id}"
																style="width: 100%; text-align: center; color: #fff;"><i
																class="fas fa-biking"></i>More Info</a>
														</div>
													</div>
												</div>
											</li>
										</c:forEach>


									</ul>
								</div>

							</article>
						</div>
						<!--	///*///======    End article  ========= //*/// -->
					</div>
				</div>
				<!--row-->
			</div>
			<!--container-->
		</section>
		<!--main-container col2-left-layout-->

		<%--  <jsp:include page="footer.jsp"></jsp:include>  --%>

		<!-- End For version 1,2,3,4,6 -->

		<jsp:include page="footer.jsp"></jsp:include>



	</div>
	<!--page-->
	<!-- Mobile Menu-->

	<!-- JavaScript -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/scriptForSearch.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery-3.4.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/common.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.bxslider.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.mobile-menu.min.js"></script>

</body>
</html>