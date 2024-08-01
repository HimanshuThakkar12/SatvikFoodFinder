<%@page import="com.satvikfoodfinder.utils.BaseMethods"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item sidebar-profile mt-4 mb-1"><a href="#">
				<div>
					<div class="profile-thumb">
						<img
							src="<%=request.getContextPath()%>/adminResourses/images/face20.jpg"
							style="display: block; margin-left: auto; margin-right: auto; width: 30%;"
							alt="profile">
					</div>
					
					<div class="mt-2">
						<!--  <h3 class="mb-1 ml-3 mt-3 profile-name">SatvikFoodFinder</h3> -->

						<h3 class = "text-center mt-3" style = "color:black;">
							<span class="nav-profile-name"><%=BaseMethods.getUserName()%></span>
						</h3>

						<!-- <p class="profile-description">Manchester</p> -->
					</div>
				</div>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="index"> <i
				class="mdi mdi-cards-variant menu-icon"></i> <span
				class="menu-title">Dashboard</span>
		</a></li>
		<!-- <li class="nav-item"><a class="nav-link" href="#"> <i
				class="mdi mdi-package menu-icon"></i> <span class="menu-title">Manage
					Package</span>
		</a></li>
 -->



		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
				<i class="mdi mdi-city menu-icon"></i> <span class="menu-title">Manage
					City</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="addCity">Add
							City</a></li>
					<li class="nav-item"><a class="nav-link" href="viewCity">View
							City</a></li>
				</ul>
			</div></li>


		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-advanced" aria-expanded="false" aria-controls="ui-advanced">
				<i class="mdi mdi-image-area menu-icon"></i> <span
				class="menu-title"> Manage Area </span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-advanced">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="addArea">Add
							Area</a></li>

					<li class="nav-item"><a class="nav-link" href="viewArea">View
							Area</a></li>

				</ul>
			</div></li>

		<!-- <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-advanced3" aria-expanded="false"
			aria-controls="ui-advanced3"> <i
				class="mdi mdi-account-card-details menu-icon"></i> <span
				class="menu-title">Manage Shops</span> <i class="menu-arrow"></i>
		</a> -->
		<!-- <div class="collapse" id="ui-advanced3">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="viewRequestedVendor">Requested shops</a></li>

					<li class="nav-item"><a class="nav-link" href="viewVendor">
							Active Shops</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewRejectedVendor"> Blocked Shops</a></li>

				</ul>
			</div></li> -->
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-advanced1" aria-expanded="false"
			aria-controls="ui-advanced1"> <i
				class="mdi mdi-account-card-details menu-icon"></i> <span
				class="menu-title">Manage Vendor</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-advanced1">
				<ul class="nav flex-column sub-menu">
					<!-- <li class="nav-item"><a class="nav-link"
						href="viewRequestedVendor"> Requested Vendor</a></li> -->
					<li class="nav-item"><a class="nav-link"
						href="viewRequestedVendor"> Requested Vendor</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewActiveVendor"> Active Vendor</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewBlockedVendor"> Blocked Vendor</a></li>

				</ul>
			</div></li>



		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-advanced2" aria-expanded="false"
			aria-controls="ui-advanced2"> <i
				class="mdi mdi-account-card-details menu-icon"></i> <span
				class="menu-title">Manage Customer</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-advanced2">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="viewActiveCustomers"> Active Customer</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewBlockedCustomers"> Blocked Customer</a></li>

				</ul>
			</div></li>

		<!-- <li class="nav-item"><a class="nav-link"
			href="pages/widgets/widgets.html"> <i
				class="mdi mdi-cube-outline menu-icon"></i> <span class="menu-title">Widgets</span>
		</a></li> -->



		<!-- 	<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#editors" aria-expanded="false" aria-controls="editors"> <i
				class="mdi mdi-pencil-box-outline menu-icon"></i> <span
				class="menu-title">Editors</span> <i class="menu-arrow"></i>
		</a>
		 <div class="collapse" id="editors">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/forms/text_editor.html">Text editors</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/forms/code_editor.html">Code editors</a></li>
				</ul>
			</div> 
			
			</li> -->
		<!-- 	<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#charts" aria-expanded="false" aria-controls="charts"> <i
				class="mdi mdi-chart-pie menu-icon"></i> <span class="menu-title">Charts</span>
				<i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="charts">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/chartjs.html">ChartJs</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/morris.html">Morris</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/flot-chart.html">Flot</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/google-charts.html">Google charts</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/sparkline.html">Sparkline js</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/c3.html">C3 charts</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/chartist.html">Chartists</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/charts/justGage.html">JustGage</a></li>
				</ul>
			</div></li> -->
		<!-- <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#tables" aria-expanded="false" aria-controls="tables"> <i
				class="mdi mdi-table-large menu-icon"></i> <span class="menu-title">Tables</span>
				<i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="tables">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/tables/basic-table.html">Basic table</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/tables/data-table.html">Data table</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/tables/js-grid.html">Js-grid</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/tables/sortable-table.html">Sortable table</a></li>
				</ul>
			</div></li> -->
		<!-- <li class="nav-item"><a class="nav-link"
			href="pages/ui-features/popups.html"> <i
				class="mdi mdi-comment-alert menu-icon"></i> <span
				class="menu-title">Popups</span>
		</a></li> -->
		<!-- <li class="nav-item"><a class="nav-link"
			href="pages/ui-features/notifications.html"> <i
				class="mdi mdi-bell menu-icon"></i> <span class="menu-title">Notifications</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#icons" aria-expanded="false" aria-controls="icons"> <i
				class="mdi mdi-emoticon menu-icon"></i> <span class="menu-title">Icons</span>
				<i class="menu-arrow"></i>
		</a> -->
		<!-- <div class="collapse" id="icons">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/icons/flag-icons.html">Flag icons</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/icons/mdi.html">Mdi icons</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/icons/font-awesome.html">Font Awesome</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/icons/simple-line-icon.html">Simple line icons</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/icons/themify.html">Themify icons</a></li>
				</ul>
			</div></li> -->
		<!-- <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#maps" aria-expanded="false" aria-controls="maps"> <i
				class="mdi mdi-map menu-icon"></i> <span class="menu-title">Maps</span>
				<i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="maps">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/maps/mapael.html">Mapael</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/maps/vector-map.html">Vector Map</a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/maps/google-maps.html">Google Map</a></li>
				</ul>
			</div></li> -->
		<!--  <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#auth" aria-expanded="false" aria-controls="auth"> <i
				class="mdi mdi-file-document menu-icon"></i> <span
				class="menu-title">User Pages</span> <i class="menu-arrow"></i> 
		</a> -->
		<!-- 	<div class="collapse" id="auth">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/login.html"> Login </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/login-2.html"> Login 2 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/register.html"> Register </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/register-2.html"> Register 2 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/lock-screen.html"> Lockscreen </a></li>
				</ul>
			</div></li> -->
		<!-- <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#error" aria-expanded="false" aria-controls="error"> <i
				class="mdi mdi-content-copy menu-icon"></i> <span class="menu-title">Error
					pages</span> <i class="menu-arrow"></i>
		</a> -->
		<!-- <div class="collapse" id="error">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/error-404.html"> 404 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/error-500.html"> 500 </a></li>
				</ul>
			</div></li> -->
		<!-- <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#general-pages" aria-expanded="false"
			aria-controls="general-pages"> <i class="mdi mdi-file menu-icon"></i>
				<span class="menu-title">General Pages</span> <i class="menu-arrow"></i>
		</a> -->
		<!-- <div class="collapse" id="general-pages">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/blank-page.html"> Blank Page </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/profile.html"> Profile </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/faq.html"> FAQ </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/faq-2.html"> FAQ 2 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/news-grid.html"> News grid </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/timeline.html"> Timeline </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/search-results.html"> Search Results </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/portfolio.html"> Portfolio </a></li>
				</ul>
			</div></li> -->
		<!-- 	<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#e-commerce" aria-expanded="false" aria-controls="e-commerce">
				<i class="mdi mdi-briefcase menu-icon"></i> <span class="menu-title">E-commerce</span>
				<i class="menu-arrow"></i>
		</a> -->
		<!-- <div class="collapse" id="e-commerce">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/invoice.html"> Invoice </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/pricing-table.html"> Pricing Table </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/orders.html"> Orders </a></li>
				</ul>
			</div></li> -->
		<!-- <li class="nav-item"><a class="nav-link"
			href="pages/apps/email.html"> <i
				class="mdi mdi-email-open-outline menu-icon"></i> <span
				class="menu-title">E-mail</span>
		</a></li> -->
		<!-- 	<li class="nav-item"><a class="nav-link"
			href="pages/apps/calendar.html"> <i
				class="mdi mdi-calendar-blank menu-icon"></i> <span
				class="menu-title">Calendar</span>
		</a></li> -->
		<!-- 	<li class="nav-item"><a class="nav-link"
			href="pages/apps/todo.html"> <i
				class="mdi mdi-format-list-bulleted menu-icon"></i> <span
				class="menu-title">Todo List</span>
		</a></li> -->
		<!-- <li class="nav-item"><a class="nav-link"
			href="pages/apps/gallery.html"> <i
				class="mdi mdi-image menu-icon"></i> <span class="menu-title">Gallery</span>
		</a></li> -->

		<li class="nav-item"><a class="nav-link" href="viewAllComplains">
				<i class="mdi mdi-cards-variant menu-icon"></i> <span
				class="menu-title">Complains</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" href="viewFeedback">
				<i class="mdi mdi-cards-variant menu-icon"></i> <span
				class="menu-title">FeedBack</span>
		</a></li>


		<li class="nav-item"><a class="nav-link" href="/logout"> <i
				class="mdi mdi-file-document-box-outline menu-icon"></i> <span
				class="menu-title">Logout</span>
		</a></li>
		<!-- <li class="nav-item report-generator mt-4">
			<p class="font-weight-medium text-white mb-2">PDF Report</p>
			<p class="mb-2">Download monthly report</p>
			<button type="button"
				class="btn btn-dark btn-icon-text btn-sidebar w-100">
				Download <i class="mdi mdi-download btn-icon-prepend float-right"></i>
			</button>
		</li> -->
	</ul>
</nav>
