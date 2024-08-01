package com.satvikfoodfinder.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.satvikfoodfinder.dao.CommentDAO;
import com.satvikfoodfinder.dao.ComplainDAO;
import com.satvikfoodfinder.dao.LoginDAO;
import com.satvikfoodfinder.dao.OrderFoodDAO;
import com.satvikfoodfinder.dao.foodMenuDAO;
import com.satvikfoodfinder.entity.CommentVO;
import com.satvikfoodfinder.entity.FoodMenu;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.entity.OrderFoodDetail;
import com.satvikfoodfinder.entity.VendorVO;
import com.satvikfoodfinder.service.AreaServiceImpl;
import com.satvikfoodfinder.service.CityServiceImpl;
import com.satvikfoodfinder.service.FeedbackServiceImpl;
import com.satvikfoodfinder.service.LoginServiceImpl;
import com.satvikfoodfinder.service.OrderFoodServiceImpl;
import com.satvikfoodfinder.service.UserServiceImpl;
import com.satvikfoodfinder.service.VendorServiceImpl;

@Controller
public class HomeController {

	@Autowired
	LoginServiceImpl login;

	@Autowired
	LoginServiceImpl loginServiceImpl;

	@Autowired
	OrderFoodDAO orderFoodDAO;

	@Autowired
	foodMenuDAO foodMenuDAO;

	@Autowired
	UserServiceImpl userServiceImpl;

	@Autowired
	FeedbackServiceImpl feedbackServiceImpl;

	@Autowired
	ComplainDAO complainDAO;

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	AreaServiceImpl areaServiceImpl;

	@Autowired
	CityServiceImpl cityServiceImpl;

	@Autowired
	VendorServiceImpl vendorServiceImpl;

	@Autowired
	CommentDAO commentDAO;
	
	@Autowired
	OrderFoodServiceImpl orderFoodServiceImpl;

	@RequestMapping("/index")
	public String index() {
		System.out.println("index Controller Fired..");
		return "index";
	}

	@RequestMapping("/register")
	public String register() {
		System.out.println("register Controller Fired..");
		return "register";
	}

	@RequestMapping("/login")
	public String login() {
		System.out.println("login Controller Fired..");
		return "login";
	}

	@RequestMapping("/vendorRegister")
	public ModelAndView vendorRegistration(ModelAndView model) {
		System.out.println("vendor registration Controller Fired..");
		Set<String> areaNames = areaServiceImpl.getAllAreaName();
		Set<String> cityNames = cityServiceImpl.getAllCity();
		System.out.println("Cities are: " + cityNames);
		System.out.println("Area Names are: " + areaNames);
		model.addObject("areaNames", areaNames);
		model.addObject("cityNames", cityNames);
		model.setViewName("vendorRegister");

		return model;
	}

	@RequestMapping("/saveVendorData")
	public String vendorSaveUserData(@ModelAttribute VendorVO vendorVO, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) {
		System.out.println("vendor save user datacontroller fired..");
		String str = request.getSession().getServletContext().getRealPath("/");
		String filePath = str + "documents\\vendorDetails\\";
		String fileName = file.getOriginalFilename();

		System.out.println("Vendor Data are: " + vendorVO + " and Qualified File name: " + filePath
				+ " and file name is: " + fileName);
		try {

			byte br[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
			bout.write(br);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		vendorVO.setFileName(fileName);

		vendorVO.setFilePath(filePath);

		LoginVO loginVO = loginServiceImpl.saveVendorInfo(vendorVO);
		loginServiceImpl.save(loginVO);
		vendorVO.setLoginvo(loginVO);
		vendorServiceImpl.save(vendorVO);
		return "redirect:/";
	}

	@RequestMapping(value = "/vendor/index", method = RequestMethod.GET)
	public ModelAndView vendorIndex(ModelAndView model, LoginVO loginVO, Principal principal) throws Exception {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("Authenticated user is: " + user);

		String userName = principal.getName();
		System.out.println("Authenticated user Username is: " + userName);
		VendorVO vendorVO = vendorServiceImpl.getUserByUserName(userName);

		List graphData = orderFoodDAO.getOrderCountByVendorId(vendorVO);

		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!" + new Gson().toJson(graphData));

		List<OrderFoodDetail> targetedOrder = new LinkedList<>();
		List<OrderFoodDetail> allOrders = orderFoodDAO.findAll();
		for (Iterator iterator = allOrders.iterator(); iterator.hasNext();) {
			OrderFoodDetail orderFoodDetail = (OrderFoodDetail) iterator.next();

			if (orderFoodDetail.getVendorVO().equals(vendorVO)) {
				targetedOrder.add(orderFoodDetail);
			}
		}

		List<FoodMenu> foodItems = foodMenuDAO.findAll();
		List<FoodMenu> vendorFoodItems = new LinkedList<>();
		for (Iterator iterator = foodItems.iterator(); iterator.hasNext();) {
			FoodMenu foodMenu = (FoodMenu) iterator.next();
			if (foodMenu.getVendorvo().equals(vendorVO)) {
				vendorFoodItems.add(foodMenu);
			}
		}

		int totalFoodItems = vendorFoodItems.size();
		model.addObject("totalItems", totalFoodItems);
		model.addObject("graphData", graphData);
		List<CommentVO> allCommeList = commentDAO.findAll();
		List<CommentVO> totalCommentList = new LinkedList<>();
		int total = 0, count = 0;
		for (Iterator iterator = allCommeList.iterator(); iterator.hasNext();) {
			CommentVO commentVO = (CommentVO) iterator.next();

			if (commentVO.getVendorVO().equals(vendorVO)) {
				totalCommentList.add(commentVO);
				int temp = Integer.parseInt(commentVO.getVendorRating());
				total += temp;
				count = count + 1;
			}

		}
		int totalComments = totalCommentList.size();
		if (total != 0 && count != 0) {

			int avgRatings = total / count;
			model.addObject("averageRating", avgRatings);
		} else {

		}
		model.addObject("totalRating", totalComments);

		model.addObject("totalOrder", targetedOrder.size());

		model.setViewName("vendor/index");

		return model;
	}

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex(ModelAndView model, LoginVO loginVO) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("Authenticated user is: " + user);
		int totalVendors = vendorServiceImpl.getAllVendors().size();
		int totalCustomers = userServiceImpl.getAllUsers().size();
		int totalComplains = complainDAO.findAll().size();
		int totalFeedbacks = feedbackServiceImpl.findAll().size();

		Date d = new Date();
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		int month = cal.get(Calendar.MONTH);
		int correctMonth = month + 1;

		System.out.println("###############################" + (correctMonth));
		List graphData = orderFoodServiceImpl.getOrderCountByMonth(correctMonth);
		System.out.println(" #################################" + new Gson().toJson(graphData));

		model.addObject("totalVendor", totalVendors);
		model.addObject("totalCustomer", totalCustomers);
		model.addObject("totalComplain", totalComplains);
		model.addObject("totalFeedback", totalFeedbacks);
		model.addObject("graphData", graphData);
		model.setViewName("admin/index");
		String userName = user.getUsername();
		System.out.println("Authenticated user Username is: " + userName);
		return model;
	}

	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("Authenticated user is: " + user);
		String userName = user.getUsername();
//		String password = user.getPassword();
		System.out.println("Authenticated user Username is: " + userName);
		return new ModelAndView("user/index");
	}

}
