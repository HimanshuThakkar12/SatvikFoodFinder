package com.satvikfoodfinder.controller;

import java.security.Principal;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.satvikfoodfinder.dao.LoginDAO;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.service.EmailService;
import com.satvikfoodfinder.service.LoginServiceImpl;

@Controller
public class ForgotPassword {

	Random random = new Random(1000);

	@Autowired
	LoginDAO loginInfo;
	@Autowired
	LoginDAO loginDAO;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	EmailService emailService;

	@RequestMapping(value = "/matchDetails", method = RequestMethod.POST)
	public String verifyDetails(@RequestParam String username, @RequestParam String email, HttpSession session) {
		System.out.println("Details Verify Controller called ..");
		System.out.println("Username is: " + username + "email is : " + email);

		LoginVO user = loginInfo.findByUserName(username);
		System.out.println(
				"Username is: " + user.getUserName() + "UserID is: " + user.getUserID() + "Role is: " + user.getRole());

		if (user.getEmail().equals(email)) {
			System.out.println("both mail id are same");

			// generate OTP of 4 digit
			int otp = random.nextInt(99999);
			System.out.println("OTP: " + otp);

			// code for send OTP to Email

			String subject = "OTP from satvikFoodFinder";
			String message = "OTP is: " + otp;
			/* String message = "<h1> OTP = " + otp + "</h1>"; */
			String to = email;

			boolean flag = this.emailService.sendEmail(subject, message, to);

			if (flag) {

				System.out.println("OTP send successfully to Email: " + email);
				session.setAttribute("OTP", otp);
				session.setAttribute("userName", user.getUserName());
				return "verify_otp";
			}

			else {
				System.out.println("Something went wrong to emailID");
//				session.setAttribute("message", "check Your mail id ");
				return "forgotPassword";
			}

		}

		else {
			System.out.println("both email id are not same");
			return "forgotPassword";
		}

	}

	@RequestMapping("forgotPassword")
	public String forgotPassword() {
		System.out.println("forgot Password Controller called ..");

		return "forgotPassword";
	}

	@RequestMapping(value = "updatePassword", method = RequestMethod.POST)
	public String updatepassword(@RequestParam("otp") int otp, HttpSession session) {
		System.out.println("Update Password Controller Called ..");
//		String session_obj_otp = (String)session.getAttribute("OTP");
		int session_otp = (int) session.getAttribute("OTP");
		System.out.println("entered OTP is: " + otp + " session OTP is: " + session_otp);

		if (session_otp == otp) {
			System.out.println("session OTP and entered OTP both are same ");
			return "updatePassword";
		} else {
			System.out.println("you have did mistake in OTP writing..");
			return "verify_otp";
		}
	}

	@RequestMapping("verifyOTP")
	public String verifyOTP() {
		System.out.println("verifyOTP Controller called ..");

		return "verify_otp";
	}

	@RequestMapping(value = "/saveChangedPassword", method = RequestMethod.POST)
	public String saveChangedPassword(@RequestParam("newPassword") String newPassword,
			@RequestParam("confirmPassword") String confirmPassword, @RequestParam("userName") String userName) {
		System.out.println("saveChangePassword Controller fired..");
		/*
		 * System.out.println( "new Password: " + newPassword + " confirm Password: " +
		 * confirmPassword + "UserName is: " + userName);
		 */
		LoginVO user = loginInfo.findByUserName(userName);
		
		System.out.println("User is : " + user);
		if(newPassword.equals(confirmPassword)) {
			user.setPassword(bCryptPasswordEncoder.encode(newPassword));

			loginDAO.save(user);
			System.out.println("Password updated successfully..");
			return "redirect:/";
		}
		else {
			System.out.println("newpassword and Confirm Password arenot same..");
			return "updatePassword";
			
		}
		
	}
	
	@RequestMapping(value = "/authForgotPassword")
	public ModelAndView authForgotPassword(ModelAndView model, Principal principal) {
		
		String userName = principal.getName();
		LoginVO user = loginInfo.findByUserName(userName);
		System.out.println("login user is: " + user );
		model.addObject("user", user);
		model.setViewName("forgotPassword");
		return model;
	}
	
	@RequestMapping(value = "/changePassword")
	public ModelAndView authChangePassword(ModelAndView model, Principal principal) {
		
		String userName = principal.getName();
		LoginVO user = loginInfo.findByUserName(userName);
		System.out.println("login user is: " + user );
		model.addObject("user", user);
		model.setViewName("changePassword");
		return model;
	}

}
