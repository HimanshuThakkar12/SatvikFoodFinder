package com.satvikfoodfinder.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.satvikfoodfinder.dao.LoginDAO;
import com.satvikfoodfinder.dao.ManageCityInfo;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		/*
		 * LoginVO login = new LoginVO(); login.setEnabled(1);
		 * login.setEmail("aadityashah3110@gmail.com");
		 * login.setPassword(bCryptPasswordEncoder.encode("1234"));
		 * login.setRole("ROLE_ADMIN"); login.setUserName("aaditya@admin");
		 * login.setStatus(true); loginDAO.save(login);
		 * System.out.println("Login Controller going to save: " + login);
		 */
		return new ModelAndView("login", "loginVO", new LoginVO());
	}

	@PostMapping("/saveRegister")
	public ModelAndView saveRegister(@ModelAttribute LoginVO login) {

		int enabled = 1;
		boolean status = true;
		login.setEnabled(enabled);
		login.setStatus(status);

		if (login.getRole().equals("User")) {
			login.setRole("ROLE_USER");
		} else {
			login.setRole("ROLE_VENDOR");
		}

		System.out.println("Register User Data: " + login);
		login.setPassword(bCryptPasswordEncoder.encode(login.getPassword()));
		loginDAO.save(login);
		return new ModelAndView("/login");

	}

	@RequestMapping(value = "/logout", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUserDetails(ModelMap model, HttpServletResponse response, HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus", "success");
			request.getSession().setAttribute("statusText", "Logout Successfully!");
		}
		System.out.println("Logout done successfully..");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView error() {

		return new ModelAndView("login");
	}

}
