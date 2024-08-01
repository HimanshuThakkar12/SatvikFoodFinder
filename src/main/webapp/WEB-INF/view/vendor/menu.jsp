<%@page import="com.satvikfoodfinder.utils.BaseMethods"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item sidebar-profile mt-4"><a href="#">
				<div>
					<div class="profile-thumb">
						<%-- <img
							src="<%=request.getContextPath()%>/adminResourses/images/face20.jpg"
							style="display: block; margin-left: auto; margin-right: auto; width: 30%;"
							alt="profile"> --%>

						<img
							src="<%=request.getContextPath()%>/vendorResourses/images/avatar.png"
							style="display: block; margin-left: auto; margin-right: auto; width: 26%;"
							alt="profile">
					</div>
					<div class="mt-2">
						<!-- <h3 class="mb-1 ml-3 mt-3 profile-name">SatvikFoodFinder</h3> -->
						<div class="mt-2">
							<!--  <h3 class="mb-1 ml-3 mt-3 profile-name">SatvikFoodFinder</h3> -->

							<h3 class="text-center mt-3" style="color: black;">
								<span class="nav-profile-name"><%=BaseMethods.getUserName()%></span>
							</h3>

							<!-- <p class="profile-description">Manchester</p> -->
						</div>
						<!-- <p class="profile-description">Manchester</p> -->
					</div>
				</div>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="index"> <i
				class="mdi mdi-cards-variant menu-icon"></i> <span
				class="menu-title">Dashboard</span>
		</a></li>



		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
				<i class="mdi mdi-city menu-icon"></i> <span class="menu-title">Food
					Menu </span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="addFood">Add
							Menu</a></li>
					<li class="nav-item"><a class="nav-link" href="viewMenu">View
							Menu</a></li>
				</ul>
			</div></li>
		<li class="nav-item"><a class="nav-link" href="viewOrder"> <i
				class="mdi mdi-food-variant menu-icon"></i> <span class="menu-title">
					View Order</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" href="vendorRating">
				<i class="mdi mdi-star menu-icon"></i> <span class="menu-title">Your
					Ratings</span>
		</a></li>




		<li class="nav-item"><a class="nav-link" href="/logout"> <i
				class="mdi mdi-logout menu-icon"></i> <span class="menu-title">Logout</span>
		</a></li>

	</ul>
</nav>
