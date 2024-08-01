package com.satvikfoodfinder.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.satvikfoodfinder.dao.CommentDAO;
import com.satvikfoodfinder.dao.ComplainDAO;
import com.satvikfoodfinder.dao.LoginDAO;
import com.satvikfoodfinder.dao.OrderFoodDAO;
import com.satvikfoodfinder.entity.CommentVO;
import com.satvikfoodfinder.entity.ComplainVO;
import com.satvikfoodfinder.entity.FeedbackVO;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.entity.OrderFoodDetail;
import com.satvikfoodfinder.entity.UserVO;
import com.satvikfoodfinder.entity.VendorVO;
import com.satvikfoodfinder.service.ComplainServiceImpl;
import com.satvikfoodfinder.service.FeedbackServiceImpl;
import com.satvikfoodfinder.service.LoginServiceImpl;
import com.satvikfoodfinder.service.UserServiceImpl;
import com.satvikfoodfinder.service.VendorServiceImpl;
import com.satvikfoodfinder.utils.BaseMethods;

@Controller
public class UserController {

	@Autowired
	UserServiceImpl userServiceImpl;
	@Autowired
	LoginServiceImpl loginServiceImpl;

	@Autowired
	FeedbackServiceImpl feedbackServiceImpl;

	@Autowired
	VendorServiceImpl vendorServiceImpl;

	@Autowired
	ComplainDAO complainDAO;

	@Autowired
	ComplainServiceImpl complainServiceImpl;

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	CommentDAO commentDAO;

	@Autowired
	OrderFoodDAO orderFoodDAO;
	
	@RequestMapping("/userRegister")
	public ModelAndView userRegistration() {
		System.out.println("user registration Controller Fired..");
		return new ModelAndView("userRegister", "userVO", new UserVO());

	}

	@PostMapping("user/saveOrder")
	public String saveOrder(ModelAndView model, OrderFoodDetail order, @RequestParam String vendorName) {
		int getDishPrice = Integer.parseInt(order.getDishPrice());
		int getTotalDish = Integer.parseInt(order.getTotalDish());
		int totalBill = getDishPrice * getTotalDish;
		
		Date d = new Date();
		
		// for date
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		
		// for month
		DateFormat dateFormate = new SimpleDateFormat("MM");
         
		order.setOrderDate(strDate);
		order.setTotalBill(String.valueOf(totalBill));
		order.setOrderMonth(dateFormate.format(d));
		
		VendorVO vendorVO = vendorServiceImpl.getUserByUserName(vendorName);
		order.setVendorVO(vendorVO);
		
		System.out.println("####################### save order controller call .. " + vendorName + order);

		orderFoodDAO.save(order);
		return "redirect:/user/vendor";

	}

	@RequestMapping("/user/viewVendorDetails")
	public ModelAndView viewVendorDetails(@RequestParam int id, ModelAndView model) {
		System.out.println("view Vendor Details Controller Fired");
		System.out.println();

		VendorVO vendorVO = vendorServiceImpl.findByID(id);
		List<CommentVO> targetedList = new LinkedList<>();
		List<CommentVO> commentList = commentDAO.findAll();
		int total = 0, count = 0;

		for (Iterator iterator = commentList.iterator(); iterator.hasNext();) {
			CommentVO commentVO = (CommentVO) iterator.next();
			if (commentVO.getVendorVO().equals(vendorVO)) {
				targetedList.add(commentVO);
				int temp = Integer.parseInt(commentVO.getVendorRating());
				total += temp;
				count = count + 1;
			}
		}
		int totalComments = targetedList.size();

		if (total != 0 && count != 0) {

			int avgRatings = total / count;
			System.out.println("$$$$$$$$$$$$$$$$$$$$" + avgRatings);
			model.addObject("averageRating", avgRatings);
		} else {

			model.addObject("averageRating", 0);
		}

		model.addObject("vendorVO", vendorVO);
		// model.addObject("vendorRatings", vendorRating);
		CommentVO commentVO = new CommentVO();
		model.setViewName("/user/viewVendorInformation");
		model.addObject("commentVO", commentVO);
		return model;
	}

	@PostMapping("/user/saveUserComment")
	public String saveUserComment(@RequestParam int vendorid, @ModelAttribute CommentVO commentVO, ModelAndView model,
			Principal principal) {
		System.out.println("Save User Commnet controller fired.." + commentVO);

		String username = principal.getName();
		UserVO userVO = userServiceImpl.findByUserName(username);

		LoginVO loginVO = userVO.getLoginvo();
		System.out.println(loginVO);

		FeedbackVO feedbackVO = feedbackServiceImpl.getFeedbackVOfromCommentVO(commentVO, loginVO);

		feedbackServiceImpl.save(feedbackVO);
		VendorVO vendorVO = vendorServiceImpl.findByID(vendorid);
		// System.out.println(vendorVO);
		commentVO.setVendorVO(vendorVO);
		commentVO.setUserVO(userVO);
		System.out.println(commentVO);

		commentDAO.save(commentVO);
		return "redirect:/user/viewVendorDetails?id=" + vendorid;
	}

	@RequestMapping("/saveUserData")
	public String saveUserRegData(@ModelAttribute UserVO userVO) {
		boolean status = true;
		System.out.println("save user reg data fired..");
		// saving user registration into login Table
		LoginVO loginVO = loginServiceImpl.saveUserInfo(userVO);
		loginDAO.save(loginVO);

		// saving user into user_reg table
		userVO.setStatus(status);
		userVO.setLoginvo(loginVO);
		userServiceImpl.save(userVO);

		System.out.println("user login id is: " + userVO.getLoginvo());
		/*
		 * LoginVO loginVO1 = userVO.getLoginvo(); loginVO1.setEnabled(1);
		 * this.loginServiceImpl.save(loginVO1);
		 */

		/*  */

		/*
		 * System.out.println("Login Data is: " + loginVO); ;
		 */

		return "redirect:/";
	}

	@RequestMapping("admin/viewActiveCustomers")
	public ModelAndView viewActiveCustomers(ModelAndView model) {

		List<UserVO> userList = userServiceImpl.getAllUsers();
		List<UserVO> activeUserList = new LinkedList<UserVO>();
		System.out.println(userList);
		for (Iterator iterator = userList.iterator(); iterator.hasNext();) {
			UserVO userVO = (UserVO) iterator.next();
			if (userVO.isStatus()) {
				activeUserList.add(userVO);
			}

			else {

			}
		}
		model.addObject("activeUserList", activeUserList);
		model.setViewName("admin/activeCustomers");

		return model;

	}

	@RequestMapping("admin/viewBlockedCustomers")
	public ModelAndView viewBlokedCustomers(ModelAndView model) {

		List<UserVO> userList = userServiceImpl.getAllUsers();
		List<UserVO> blockedUserList = new LinkedList<UserVO>();
		System.out.println(userList);
		for (Iterator iterator = userList.iterator(); iterator.hasNext();) {
			UserVO userVO = (UserVO) iterator.next();
			if (!userVO.isStatus()) {
				blockedUserList.add(userVO);
			}

			else {

			}
		}
		model.addObject("blockedUserList", blockedUserList);
		model.setViewName("admin/blockCustomers");

		return model;

	}

	@RequestMapping("/admin/blockUser")
	public String blockUsers(@RequestParam int id) {
		System.out.println("block User Controller fired..");
		UserVO userVO = userServiceImpl.findByID(id);
		LoginVO loginVO = loginServiceImpl.findByID(userVO.getLoginvo().getUserID());
		loginVO.setEnabled(0);
		loginServiceImpl.save(loginVO);
		userVO.setStatus(false);
		userServiceImpl.save(userVO);
		System.out.println("status changed successfully");
		return "redirect:viewActiveCustomers";
	}

	@RequestMapping("/admin/unBlockUser")
	public String unBlockUsers(@RequestParam int id) {
		System.out.println("block User Controller fired..");
		UserVO userVO = userServiceImpl.findByID(id);
		LoginVO loginVO = loginServiceImpl.findByID(userVO.getLoginvo().getUserID());
		loginVO.setEnabled(1);
		loginServiceImpl.save(loginVO);
		userVO.setStatus(true);
		userServiceImpl.save(userVO);
		System.out.println("status changed successfully");
		return "redirect:viewBlockedCustomers";
	}

	@GetMapping("user/aboutUs")
	public ModelAndView aboutUs() {
		return new ModelAndView("user/aboutUs");
	}

	@GetMapping("/viewUserMenu")
	public ModelAndView addUserMenu() {
		return new ModelAndView("user/viewUserMenu");
	}

	@GetMapping("user/vendor")
	public ModelAndView viewVendor(ModelAndView model) {
		List<VendorVO> vendorList = vendorServiceImpl.getAllVendors();
		List<VendorVO> finalVendorLisr = new LinkedList<>();

		for (Iterator iterator = vendorList.iterator(); iterator.hasNext();) {
			VendorVO vendorVO = (VendorVO) iterator.next();
			if (vendorVO.isFlag() && (vendorVO.isStatus())) {

				finalVendorLisr.add(vendorVO);
			}

		}

		model.addObject("vendorList", finalVendorLisr);
		model.setViewName("user/viewVendor");
		return model;
	}

	@RequestMapping("user/addComplain")
	public ModelAndView addComplain(ModelAndView model) {

		/* List<?> complainList = this.complainsSevice.getComplains(complainVO); */

		System.out.println("add complain controller fired ..");
		String userName = BaseMethods.getUserName();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);

		LoginVO loginVO1 = this.loginServiceImpl.searchLoginID(loginVO);
		System.out.println("################## Login User is: " + loginVO1 + "#######################");
		ComplainVO complainVO = new ComplainVO();
		complainVO.setLoginVO(loginVO1);
		System.out.println("################## Complain  is: " + complainVO + "#######################");
		model.addObject("complainVO", complainVO);
		/* List<?> complainList = this.complainDAO.findAllById(complainVO.getId()); */
		List<ComplainVO> complainList = this.complainServiceImpl.findAllByLoginVO(loginVO1.getUserID());
		System.out.println("################## Complains are: " + complainList + "#######################");
		model.addObject("complainList", complainList);
		model.setViewName("user/addComplain");
		return model;
	}

	@PostMapping("user/saveComplain")
	public ModelAndView saveUserComplains(@ModelAttribute ComplainVO complainVO,
			@RequestParam("file") MultipartFile file, HttpServletRequest request) {

		String str = request.getSession().getServletContext().getRealPath("/");
		String filePath = str + "documents\\userDetails\\";
		String fileName = file.getOriginalFilename();
		try {

			byte br[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
			bout.write(br);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVO.setComplainDateTime(strDate);

		String userName = BaseMethods.getUserName();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);

		LoginVO loginVO1 = this.loginServiceImpl.searchLoginID(loginVO);
		complainVO.setLoginVO(loginVO1);
		complainVO.setFileName(fileName);
		complainVO.setFilePath(filePath);

		this.complainDAO.save(complainVO);
		return new ModelAndView("redirect:/user/addComplain");
	}

	@GetMapping("user/myAccount")
	public ModelAndView myAccount(Principal principal) {

		String userName = BaseMethods.getUserName();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);
		LoginVO loginVO1 = this.loginServiceImpl.searchLoginID(loginVO);
		// List<?> userDetails = this.userService.getUserDetailsById(loginVO1);

		UserVO userVO = userServiceImpl.findByUserName(userName);
		userVO.setLoginvo(loginVO1);
		System.out.println("$$$$$$$$" + loginVO1);
		System.out.println("$$$$$$$$$$ " + userVO + "$$$$$$$$$$$$");

		return new ModelAndView("user/myAccount", "userVO", userVO);
	}

	@PostMapping("user/saveUser")
	public ModelAndView editUser(@ModelAttribute UserVO userVO, Principal principal) {
		System.out.println("MyAccount Update Controller fired..");
		String userName = BaseMethods.getUserName();
		String email = userVO.getEmail();
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$" + userVO + "$$$$$$$$$$$$$$$$$$$$$");
		LoginVO loginVO2 = userVO.getLoginvo();
		loginVO2.setUserName(userName);
		// userVO.setLoginvo(loginVO1);
		userVO.setLoginvo(loginVO2);
		String updatedUserName = userVO.getUsername();
		loginServiceImpl.saveUpdateUser(userVO.getLoginvo(), updatedUserName, email);
		userServiceImpl.save(userVO);

		return new ModelAndView("redirect:/");
	}
}
