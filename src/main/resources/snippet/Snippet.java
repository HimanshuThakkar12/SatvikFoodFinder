package snippet;

public class Snippet {
	
	<div
		class="main-container col1-layout wow bounceInUp animated animated"
		style="visibility: visible; margin-top: 110px">
	
		<div class="main container">
	
			<div class="account-login row">
				<!--page-title-->
				<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
				<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
				<input name="form_key" type="hidden" value="EPYwQxF6xoWcjLUr">
				<fieldset class="col2-set">
	
					<div class="col-1 new-users">
						<strong>Vendor Register</strong>
						<div class="content">
	
							<f:form class="pt-3" action="saveVendor" method="post"
								onsubmit="return ValidateVendor()" modelAttribute="VendorVO"
								enctype="multipart/form-data">
	
								<div class="form-list">
									<label for="email">Enter Your Name<em class="required">*</em></label>
									<div class="input-box">
										<f:input type="text" class="input-text required-entry"
											name="username" path="fullName" id="fullName" />
										<span style="color: red;" id="fullNameErrDivId"></span>
									</div>
	
	
									<div class="input-box">
										<label for="email">Enter Email Id<em class="required">*</em></label>
										<f:input type="text" class="input-text required-entry"
											id="username" name="username" path="loginvo.username" />
										<span style="color: red;" id="userErrDivId"></span>
									</div>
	
									<div class="input-box">
										<label for="contactno">Enter Contact Number<em
											class="required">*</em></label>
										<f:input type="text" id="contactno"
											class="input-text required-entry" name="username"
											path="contactno" />
										<span style="color: red;" id="contactNumberErrDivId"></span>
									</div>
	
									  <div class="input-box">
										<label for="contactno">City<em class="required">*</em></label><br>
										<f:select  id="billing-address-select"  class="address-select" onchange="billing.newAddress(!this.value)"
											name="billing_address_id" path="cityVO.id" style="width: -webkit-fill-available;">
											<option value="">Select City</option>
											<c:forEach items="${cityList}" var="i">
												<option value="${i.id}">${i.cityName}</option>
											</c:forEach>
										</f:select>
										<span style="color: red;" id="cityIdDivId"></span>
									</div>  
									
									<div class="input-box">
										<label for="email">Enter Your Address<em
											class="required">*</em></label>
										<f:input type="tel" class="input-text" id="address"
											path="address" />
										<span style="color: red;" id="addressErrDivId"></span>
									</div>
	
									<div class="input-box">
										<label for="email">Upload Your Id<em class="required">*</em></label>
										<input type="file" class="input-text" name="file" id="file" />
										<span style="color: red;" id="fileErrDivId"></span>
									</div>
	
								</div>
	
								<div class="buttons-set" style="margin-top: 10px">
									<button type="submit" class="button create-account"
										title="Login" name="send" id="send2">
										<span>Register</span>
									</button>
								</div>
	
	
								<!--buttons-set-->
							</f:form>
						</div>
						<!--content-->
					</div>
	
					<f:form action="j_spring_security_check" id="login-form"
						method="post">
						<div class="col-2 registered-users">
	
							<img src="userResources/images/regimage.jpeg" alt="Not Found" />
	
						</div>
					</f:form>
					<!--col-2 registered-users-->
				</fieldset>
				<!--col2-set-->
	
	
			</div>
			<!--account-login-->
	
		</div>
}

