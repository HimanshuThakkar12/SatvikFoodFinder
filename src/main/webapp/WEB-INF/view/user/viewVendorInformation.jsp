<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.satvikfoodfinder.utils.BaseMethods"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendor Information</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
<link rel="icon" href="#" type="image/x-icon">

<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/star.css" />
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

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResourses/css/materialdesignicons.min.css">

<link href="<%=request.getContextPath()%>/userResources/css/css1.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css2.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/css3.css"
	rel='stylesheet' type='text/css'>
<link href="<%=request.getContextPath()%>/userResources/css/css4.css"
	rel="stylesheet">

<link href="<%=request.getContextPath()%>/userResources/css/custom.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/userResources/css/validation.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,800,400'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/jquery.toast.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous">
	
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous">
	
</script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous">
	
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous">
	
</script>



<style type="text/css">
.vendorInformation {
	border: 2px solid gray inherit;
	font-family: Arial;
	display: flex;
	align-content: center;
	flex-flow: column;
}

.container #myTable td {
	font-size: 18px;
	font-family: inherit;
	padding-top: 10px;
	font-family: Arial;
	padding-left: 9px;
	font-weight: bold;
}

.container #myTable th {
	font-size: 18px;
	font-family: inherit;
	padding-top: 10px;
	padding-left: 10px;
	padding-bottom: 10px;
	border-bottom: 1px solid rgb(23, 19, 19);
}

.orderButton {
	margin-top: 13px;
	border: 2px solid gray;
	padding: 8px 15px;
	background-color: #90c741;
	color: white;
	border-radius: 6px;
	outline: none;
	cursor: pointer;
	font-weight: 500;
	border: 0;
}
</style>
<!-- BEGIN GOOGLE ANALYTICS CODEs -->

</head>
<body>
	<div id="page">
		<div class="top-section">
			<div class="container" style="height: 90%;">
				<jsp:include page="header.jsp"></jsp:include>

				<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


				<div class="container">


					<div class="page-title contentCenter mb-5">
						<h2 style="margin-left: 22px; font-size: 40px;">Vendor
							Information</h2>

						<div class="vendorInformation"
							style="margin-left: 23px; display: flex; flex-flow: row; flex-wrap: wrap;">

							<c:set var="vendorVO" value="${vendorVO }" />

							<input type="hidden" id="vendorid" value="${vendorVO.id}" />

							<div class="row" style="width: 100%;">
								<div class="col-lg-6 mt-1">
									<div class="input-box name-firstname">
										<div class="input-box1">
											<h4 style="font-size: 21px; font-weight: bold;">
												Shop Name:
												<c:out value=" ${vendorVO.shopName}"></c:out>
											</h4>
										</div>
									</div>
								</div>

								<div class="col-lg-6 mt-1">
									<div class="input-box name-firstname">
										<div class="input-box1">
											<h4 style="font-size: 21px; font-weight: bold;">
												Shop Address:
												<c:out value=" ${vendorVO.address}"></c:out>
											</h4>
										</div>
									</div>
								</div>

								<div class="col-lg-6 mt-1">
									<div class="input-box name-firstname">
										<div class="input-box1">
											<h4 style="font-size: 21px; font-weight: bold;">
												Vendor Contact Info. :
												<c:out value=" ${vendorVO.contactno}"></c:out>
											</h4>
										</div>
									</div>
								</div>

								<div class="col-lg-6 mt-1">
									<div class="input-box name-firstname">
										<div class="input-box1">
											<h4 style="font-size: 21px; font-weight: bold;">
												Vendor Email ID:
												<c:out value=" ${vendorVO.email}"></c:out>
											</h4>
										</div>
									</div>
								</div>

								<div class="col-lg-12 mt-1">
									<div class="input-box name-firstname">
										<div class="input-box1">
											<h4 style="font-size: 21px; font-weight: bold;">
												Vendor Rating: <span style="color: #FFD700;" class="pt-2">
													<c:forEach var="s" begin="1" end="${averageRating}">
														<i class="mdi mdi-star"></i>
													</c:forEach>
												</span>

											</h4>
										</div>
									</div>
								</div>


							</div>

						</div>
					</div>


					<div class="page-title">
						<h2 style="margin-left: 22px; margin-top: 36px; font-size: 38px;">Vendor
							Menu</h2>



						<div class="daySelect" style="display: flex;">
							<h4
								style="padding-left: 20px; display: inline-block; font-size: 18px; font-weight: bold;">
								<!-- col-sm-2 -->
								Select Day:

							</h4>
							<div class="col-sm-4" style="display: inline-block;">
								<select class="form-control" id="day" name="day" required
									style="font-size: 15px; font-weight: bold;">

									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>

								</select>
							</div>

							<h4
								style="padding-left: 22px; display: inline-block; font-size: 18px; font-weight: bold;">
								<!-- col-sm-2 -->
								Select Category:

							</h4>
							<div class="col-sm-4" style="display: inline-block;">
								<select class="form-control " id="category" name="category"
									style="font-size: 15px; font-weight: bold;" required>

									<option value="Breakfast">Breakfast</option>
									<option value="Brunch">Brunch</option>
									<option value="Lunch">Lunch</option>
									<option value="Dinner">Dinner</option>


								</select>

							</div>




							<input type="button" id="filterFoodMenu"
								style="border: 2px solid gray; padding: 8px 15px; background-color: #90c741; color: white; color: white; border-radius: 6px; outline: none; cursor: pointer; font-weight: 500; border: 0;"
								value="Search" />

						</div>

						<div class="container">


							<table class="table tableData"
								style="width: 1108px; margin-left: -36px; margin-top: 35px; margin-bottom: 26px;"
								id="myTable">



							</table>




							<form method="post" action="saveOrder">

								<div id="myModal" class="modal fade" role="dialog"
									style="background: #333;">
									<div class="modal-dialog modal-lg">

										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title">Order with:
													${vendorVO.userName}</h4>
											</div>
											<div class="modal-body">
												<div class="row">

													<div class="col-lg-12">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="userName" name="userName"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	value="<%=BaseMethods.getUserName()%>"
																	placeholder="Enter First Name" class="input-text">
															</div>
														</div>
													</div>
													<!--
<div class="col-lg-6">
													<div class="input-box name-firstname">
														<div class="input-box1">
															<input type="text" id="lastname"
																style="border: 1px solid #d1d1d1; width: 100%;"
																placeholder="Enter Last Name" class="input-text">
														</div>
													</div>
												</div>
  -->


													<div class="col-lg-6 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="contactno" name="contactno"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	maxlength="10" placeholder="Enter Your Phone Number"
																	class="input-text">
															</div>
														</div>
														<span style="color: red;" id="contactNumberErrDivId"></span>
													</div>



													<div class="col-lg-6 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="email" name="email"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	placeholder="Enter Your Email" class="input-text">
															</div>
														</div>
														<span style="color: red;" id="userErrDivId"></span>
													</div>





													<div class="col-lg-12 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<textarea id="address" name="address" name="address"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	placeholder="Enter Your Address" class="input-text"></textarea>
															</div>
														</div>
													</div>
													<div class="col-lg-6 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="categpry" name="category"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	placeholder="Enter dish category"
																	class="input-text category" readonly="readonly">
															</div>
														</div>
														<span style="color: red;" id="userErrDivId"></span>
													</div>

													<div class="col-lg-6 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="dishName" name="dishName"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	placeholder="Enter dish Name "
																	class="input-text dishName" readonly="readonly">
															</div>
														</div>
														<span style="color: red;" id="userErrDivId"></span>
													</div>



													<div class="col-lg-6 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="dishPrice" name="dishPrice"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	maxlength="10" placeholder="Enter Dish Price"
																	class="input-text dishPrice" readonly="readonly">
															</div>
														</div>
														<span style="color: red;" id="totalDishErrDivId"></span>
													</div>


													<div class="col-lg-6 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="text" id="totalDish" name="totalDish"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	maxlength="10" placeholder="Enter Total Dish"
																	class="input-text">
															</div>
														</div>
														<span style="color: red;" id="totalDishErrDivId"></span>
													</div>
													<div class="col-lg-12 mt-1">
														<div class="input-box name-firstname">
															<div class="input-box1">
																<input type="hidden" id="vendorName" name="vendorName"
																	style="border: 1px solid #d1d1d1; width: 100%;"
																	value="${vendorVO.userName}"
																	placeholder="Enter Vendor Name" class="input-text">
															</div>
														</div>
													</div>

												</div>
											</div>
											<!-- 	validateOrderDetais -->
											<div class="modal-footer">
												<button type="button" class="button btn-default"
													data-dismiss="modal">Close</button>
												<button type="submit" class="button" onclick="saveOrder()">Confim</button>
											</div>
										</div>

									</div>
								</div>
							</form>
						</div>



					</div>
					<!-- search -->
					<div class="page-title">
						<h2 style="font-size: 38px; margin-left: 15px; margin-top: 23px;">Make
							Comments</h2>
					</div>

					<div class="main container ">


						<div class="row" style="margin-left: -57px;">
							<div class="col-main col-sm-12 main-blog"
								style="margin-top: -16px;">
								<div id="main" class="blog-wrapper">
									<div id="primary" class="site-content">
										<div id="content" role="main">
											<article id="post-29" class="blog_entry clearfix"></article>
											<div class="comment-content wow bounceInUp animated animated"
												style="visibility: visible;">

												<!--comments-wrapper-->

												<div class="comments-form-wrapper clearfix">
													<!-- <h3>Post Feedback</h3> -->

													<%@taglib prefix="f"
														uri="http://www.springframework.org/tags/form"%>
													<%@ taglib uri="http://java.sun.com/jstl/core_rt"
														prefix="c"%>


													<f:form class="comment-form"
														onsubmit="return validateFeedbackDetais()" method="post"
														id="postComment"
														action="saveUserComment?vendorid=${vendorVO.id	}"
														modelAttribute="commentVO">

														<div class="field">

															<fieldset class="rating" style="margin-bottom: 3rem">
																<input type="radio" id="star5" name="vendorRating"
																	value="5" /> <label class="full" for="star5"
																	title="Awesome - 5 stars"></label> <input type="radio"
																	id="star4" name="vendorRating" value="4" /><label
																	class="full" for="star4" title="Pretty good - 4 stars"></label>

																<input type="radio" id="star3" name="vendorRating"
																	value="3" /><label class="full" for="star3"
																	title="Meh - 3 stars"></label> <input type="radio"
																	id="star2" name="vendorRating" value="2" /><label
																	class="full" for="star2" title="Kinda bad - 2 stars"></label>

																<input type="radio" id="star1" name="vendorRating"
																	value="1" /><label class="full" for="star1"
																	title="Sucks big time - 1 star"></label>
															</fieldset>


															<div class="field aw-blog-comment-area">
																<f:textarea rows="5" cols="50" class="input-text"
																	title="comment" id="comment" name="comment"
																	placeholder="Enter Your Comment To Vendor..."
																	path="comment" />
															</div>

															<div style="width: 96%" class="button-set">
																<button type="submit" class="bnt-comment">
																	<span><span> Comment</span></span>
																</button>
															</div>
														</div>
													</f:form>
												</div>
												<!--comments-form-wrapper clearfix-->



											</div>

										</div>

									</div>

								</div>
								<!--#main wrapper grid_8-->

							</div>
							<!--col-main col-sm-9-->
						</div>
					</div>
				</div>
			</div>

		</div>


		<footer
			style="overflow: hidden; color: #fff; background: #90c741; background-image: url(<%=request.getContextPath()%>/userResources/images/dot-repeat.svg); line-height: 1.6em; background-position: topleft; background-size: 18px 36px;">

			<!-- BEGIN INFORMATIVE FOOTER -->

			<!--footer-middle-->
			<div class="footer-top container">
				<div>
					<div class="row">
						<div class="col-xs-12 col-sm-4"></div>
						<div class="col-sm-4 col-xs-12 coppyright" style="padding: 0px">&copy;
							2023 SatvikFoodFinder. All Rights Reserved.</div>
					</div>
				</div>
			</div>

			<!--footer-bottom-->
			<!-- BEGIN SIMPLE FOOTER -->
		</footer>


	</div>



	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/scriptForSearch.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/FoodMenuFilter.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery-3.4.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/common.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.bxslider.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/toastDemo.js"></script>

	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.mobile-menu.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/custom/feedback.js"></script>

</body>
</html>