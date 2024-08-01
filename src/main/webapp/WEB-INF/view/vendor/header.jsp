	<%@page import="com.satvikfoodfinder.utils.BaseMethods"%>
<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
	<div
		class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-between">
		<%-- <a class="navbar-brand brand-logo" href="index.html"><img
			src="<%=request.getContextPath()%>/adminResourses/images/logo.svg" alt="logo" /></a> --%>
			 <%-- <a
			class="navbar-brand brand-logo-mini" href="index.html"><img
			src="<%=request.getContextPath()%>/adminResourses/images/logo-mini.svg" alt="logo" /></a> --%>
	<!-- 	<div class="notification">
			<i class="mdi mdi-bell-outline"></i> <span class="indicator"></span>
		</div> -->
		
		<h3 id = "satvikFoodFinder">SatvikFoodFinder</h3>
	</div>
	<div
		class="navbar-menu-wrapper d-flex align-items-center justify-content-between">
		<div class="d-none d-lg-flex">
			<button class="navbar-toggler navbar-toggler align-self-center"
				type="button" data-toggle="minimize" onclick="toggleManage()" >
				<span class="mdi mdi-menu"></span>
			</button>
		
		</div>
	
		<ul class="navbar-nav navbar-nav-right">
	
			<li class="nav-item nav-profile dropdown">
				<div class="nav-link" data-toggle="dropdown" id="profileDropdown">
					<span>Hi, <span class="nav-profile-name"><%=BaseMethods.getUserName()%></span></span> <span class="user-icon">E</span>
				</div>
				<div
					class="dropdown-menu dropdown-menu-right navbar-dropdown user-profile-action"
					aria-labelledby="profileDropdown">
					<div class="p-3 text-center bg-success">
						<%-- <img class="img-avatar img-avatar48 img-avatar-thumb"
							src="<%=request.getContextPath()%>/adminResourses/images/face20.jpg" alt="">
							
 --%>							<img
							src="<%=request.getContextPath()%>/vendorResourses/images/avatar.png"
							alt="profile">
					</div>
					<div class="p-2">
						<!-- <h5 class="dropdown-header text-uppercase pl-2 text-dark">User
							Options</h5>
						<a
							class="dropdown-item py-1 px-2 d-flex align-items-center justify-content-between"
							href="#"> <span>Inbox</span> <span class="p-0"> <span
								class="badge badge-primary">3</span> <i
								class="mdi mdi-email-open-outline ml-1"></i>
						</span>
						</a> <a
							class="dropdown-item py-1 px-2 d-flex align-items-center justify-content-between"
							href="#"> <span>Profile</span> <span class="p-0"> <span
								class="badge badge-success">1</span> <i
								class="mdi mdi-account-outline ml-1"></i>
						</span>
						</a> <a
							class="dropdown-item py-1 px-2 d-flex align-items-center justify-content-between"
							href="javascript:void(0)"> <span>Settings</span> <i
							class="mdi mdi-settings"></i>
						</a> -->
						<div role="separator" class="dropdown-divider"></div>
						<h5 class="dropdown-header text-uppercase  pl-2 text-dark mt-2">Actions</h5>
						<a
							class="dropdown-item py-1 px-2 d-flex align-items-center justify-content-between"
							href="/changePassword"> <span>Change Password</span> <i
							class="mdi mdi-lock ml-1"></i>
						</a> <a
							class="dropdown-item py-1  px-2 d-flex align-items-center justify-content-between"
							href="/logout"> <span>Log Out</span> <i class="mdi mdi-logout ml-1"></i>
						</a>
					</div>
				</div>
			</li>
		</ul>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-toggle="offcanvas">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
</nav>

