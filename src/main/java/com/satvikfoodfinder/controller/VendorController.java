package com.satvikfoodfinder.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.satvikfoodfinder.dao.CommentDAO;
import com.satvikfoodfinder.dao.OrderFoodDAO;
import com.satvikfoodfinder.dao.foodMenuDAO;
import com.satvikfoodfinder.entity.AreaInfo;
import com.satvikfoodfinder.entity.CommentVO;
import com.satvikfoodfinder.entity.FoodMenu;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.entity.OrderFoodDetail;
import com.satvikfoodfinder.entity.UserVO;
import com.satvikfoodfinder.entity.VendorVO;
import com.satvikfoodfinder.service.LoginServiceImpl;
import com.satvikfoodfinder.service.VendorServiceImpl;
import com.satvikfoodfinder.utils.BaseMethods;

@Controller
/* @RequestMapping("/vendor/") */
public class VendorController {
 
	@Autowired
	VendorServiceImpl vendorServiceImpl;
	
	@Autowired
	foodMenuDAO foodMenuDAO;
	
	@Autowired
	CommentDAO commentDAO;
	
	@Autowired
	OrderFoodDAO orderFoodDAO;
	

	@Autowired
	LoginServiceImpl loginServiceImpl;
	
	@RequestMapping("/registration")
	public String vendorRegistration() {
		System.out.println("vendor registration controller fired..");
		return "/vendor/registration";
	}
	
	@RequestMapping("/vendor/addFood")
	public String addFood() {
		System.out.println("Add Menu Controller Fired");
		return "/vendor/addMenu";
	}
	
	@GetMapping("/vendor/viewOrder")
	public ModelAndView viewOrder(ModelAndView modal, Principal principal) {
		
		String userName = principal.getName();
		VendorVO loginVendorVO = vendorServiceImpl.getUserByUserName(userName);
		List<OrderFoodDetail> targetedOrder = new LinkedList<>();
		
		List<OrderFoodDetail> allOrder = orderFoodDAO.findAll(); 
		
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			OrderFoodDetail orderFoodDetail = (OrderFoodDetail) iterator.next();
			
			if(orderFoodDetail.getVendorVO().equals(loginVendorVO)) {
				targetedOrder.add(orderFoodDetail);
			}
		}
		
		modal.addObject("orderList", targetedOrder);
		modal.setViewName("/vendor/viewOrder");
		return modal;
	}
	
	@RequestMapping("/vendor/acceptOrder")
	public String acceptOrder( @RequestParam int orderId, ModelAndView modal) {
		// 
		modal.setViewName("/vendor/viewOrder");
		OrderFoodDetail order = orderFoodDAO.findById(orderId).get();
		System.out.println(" ###################" + orderId + order);
		order.setStatus(true);
		orderFoodDAO.save(order);
		return "redirect:/vendor/viewOrder";
	}
	
	/*
	 * @RequestMapping("/vendor/rejectOrder") public String
	 * rejectOrder(@RequestParam int orderId, ModelAndView modal) { OrderFoodDetail
	 * order = orderFoodDAO.findById(orderId).get(); order.setStatus(false);
	 * System.out.println(" ###################" + orderId + order);
	 * orderFoodDAO.save(order); modal.setViewName("/vendor/viewOrder"); return
	 * "redirect:/vendor/viewOrder"; }
	 */
	
	@RequestMapping("/vendor/viewMenu")
	public ModelAndView viewMenu( ModelAndView model, Principal principal) {
		String userName = principal.getName();
		VendorVO vendorVO = vendorServiceImpl.getUserByUserName(userName);
		System.out.println("login Vendor is: " + vendorVO);
		System.out.println("view Menu Controller Fired");
		List<FoodMenu> foodMenuList = new LinkedList<>();
		
		List<FoodMenu> allFoodMenuList = foodMenuDAO.findAll();
		
		for (Iterator iterator = allFoodMenuList.iterator(); iterator.hasNext();) {
			FoodMenu foodMenu = (FoodMenu) iterator.next();
			
			if (foodMenu.getVendorvo().equals(vendorVO)) {
				foodMenuList.add(foodMenu);
			}
		}
		
		
		model.addObject("foodMenuList", foodMenuList);
		model.setViewName("/vendor/viewMenu");
		return model;
	}
	
	
	
	@PostMapping("/vendor/addMenu")
	public String addMenu(@ModelAttribute FoodMenu foodMenu, Principal principal) {
		
		String userName = principal.getName();
		
		System.out.println("add Menu Controller Fired.." + userName);
		foodMenu.setStatus(true);
		VendorVO vendorVO = vendorServiceImpl.getUserByUserName(userName);
		foodMenu.setVendorvo(vendorVO);
		foodMenuDAO.save(foodMenu);
		System.out.println("Menu Saved Successfully");
		System.out.println(" Your Food Item is: " + foodMenu);
		
		return "redirect:addFood";
		
	}
	
	@GetMapping("vendor/deleteFoodItem/{foodID}")
	public String deleteFoodItem(@PathVariable int foodID) {
		System.out.println("delete Food Item controller fired .. " + foodID);
		foodMenuDAO.deleteById(foodID);
		System.out.println(" Data Deleted Successfully for ID .. " );
		return "redirect:/vendor/viewMenu";
	}
	
	@GetMapping("admin/viewRequestedVendor")
	public ModelAndView viewRequestedvendor() {
		List<VendorVO> vendorList = this.vendorServiceImpl.getRequestedVendor();
		return new ModelAndView("admin/viewRequestedVendor", "vendorList", vendorList);
	}
	
	@RequestMapping("vendor/setUpdateFoodItem")
	public ModelAndView updateArea(@RequestParam int foodID, ModelAndView model) {
		System.out.println("update Menu controller fired ..");
		
		FoodMenu foodMenuItem = foodMenuDAO.getById(foodID);
		System.out.println("Data for Updation Page get Successfully .. ");
		System.out.println("Dish price is: " + foodMenuItem.getDishPrice());
		model.addObject("foodItem", foodMenuItem);
		model.setViewName("vendor/updateMenu");
//		System.out.println(areaItem);
		return model;
	}

//	@RequestParam(value = "areaId")int areaId, @RequestParam(value = "areaName", defaultValue  = "area name") String areaName, @RequestParam(value = "areaPincode", defaultValue  = "area pincode") String areaPincode,  @RequestParam(value = "areaDescription", defaultValue  = "area description") String areaDescription

	@RequestMapping(value = "vendor/updateFoodMenu", method = RequestMethod.POST)
	public String updateMenuData(@ModelAttribute FoodMenu foodMenu,  Principal principal) {
		System.out.println("update Menu Data controller fired ..");
		VendorVO vendorVO = vendorServiceImpl.getUserByUserName(principal.getName());
		foodMenu.setVendorvo(vendorVO);
		foodMenuDAO.save(foodMenu);
		System.out.println("data updated sucessfully for ID : " + foodMenu.getFoodID());
		return "redirect:/vendor/viewMenu";
	}
	
	@RequestMapping("admin/acceptVendor")
	public ModelAndView acceptVendor( @RequestParam int id) {
		VendorVO vendorVO = this.vendorServiceImpl.findByID(id);
		LoginVO loginVO = vendorVO.getLoginvo();

		loginVO.setEnabled(1);
		vendorVO.setFlag(true);
		vendorVO.setStatus(true);

		this.loginServiceImpl.save(loginVO);
		this.vendorServiceImpl.save(vendorVO);
		return new ModelAndView("redirect:viewRequestedVendor");
	}
	
	@RequestMapping("admin/viewActiveVendor")
	public ModelAndView viewActiveCustomers(ModelAndView model) {

		List<VendorVO> vendorList = vendorServiceImpl.getAllVendors();
		System.out.println(vendorList);
		List<VendorVO> activeVendorList = new LinkedList<VendorVO>();
		System.out.println(vendorList);
		for (Iterator iterator = vendorList.iterator(); iterator.hasNext();) {
			VendorVO vendorVO = (VendorVO) iterator.next();
			if (vendorVO.isStatus() && vendorVO.isFlag()) {
				activeVendorList.add(vendorVO);
			}

			else {

			}
		}
		
		model.addObject("activeVendorList", activeVendorList);
		model.setViewName("admin/activeVendor");

		return model;

	}
	
	@RequestMapping("admin/viewBlockedVendor")
	public ModelAndView viewBlockedCustomers(ModelAndView model) {

		List<VendorVO> vendorList = vendorServiceImpl.getAllVendors();
		System.out.println(vendorList);
		List<VendorVO> blockedVendorList = new LinkedList<VendorVO>();
		for (Iterator iterator = vendorList.iterator(); iterator.hasNext();) {
			VendorVO vendorVO = (VendorVO) iterator.next();
			if (!vendorVO.isStatus()) {
				blockedVendorList.add(vendorVO);
			}

			else {

			}
		}
		
		model.addObject("blockedVendorList", blockedVendorList);
		model.setViewName("admin/blockVendors");

		return model;

	}
	
	@RequestMapping("/admin/blockVendor")
	public String blockUsers(@RequestParam int id) {
		System.out.println("block User Controller fired..");
		VendorVO vendorVO = vendorServiceImpl.findByID(id);
		LoginVO loginVO = loginServiceImpl.findByID(vendorVO.getLoginvo().getUserID());
		loginVO.setEnabled(0);
		loginServiceImpl.save(loginVO);
		vendorVO.setStatus(false);
		vendorServiceImpl.save(vendorVO);
		System.out.println("status changed successfully");
		return "redirect:viewActiveVendor";
	}
	
	@RequestMapping("/admin/unBlockVendor")
	public String unBlockUsers(@RequestParam int id) {
		System.out.println("block User Controller fired..");
		VendorVO vendorVO = vendorServiceImpl.findByID(id);
		LoginVO loginVO = loginServiceImpl.findByID(vendorVO.getLoginvo().getUserID());
		loginVO.setEnabled(1);
		loginServiceImpl.save(loginVO);
		vendorVO.setFlag(true);
		vendorVO.setStatus(true);
		vendorServiceImpl.save(vendorVO);
		System.out.println("status changed successfully");
		return "redirect:viewBlockedVendor";
	}
	
	@RequestMapping("admin/rejectVendor")
	public ModelAndView rejectVendor(@RequestParam int id) {
		VendorVO vendorVO = this.vendorServiceImpl.findByID(id);
		LoginVO loginVO = vendorVO.getLoginvo();
		vendorVO.setStatus(false);
		vendorVO.setFlag(false);
		loginVO.setStatus(false);

		this.vendorServiceImpl.save(vendorVO);
		this.loginServiceImpl.save(loginVO);

		return new ModelAndView("redirect:viewBlockedVendor");
	}

	@GetMapping("vendor/vendorRating")
	public ModelAndView vendorRating(CommentVO commentVO) {

		String userName = BaseMethods.getUserName();
		VendorVO vendorVO = vendorServiceImpl.getUserByUserName(userName);
		List<CommentVO> allComments = commentDAO.findAll();
		List<CommentVO> vendorRatingList = new LinkedList<>();
		for (Iterator iterator = allComments.iterator(); iterator.hasNext();) {
			CommentVO commentVO2 = (CommentVO) iterator.next();
			
			if(commentVO2.getVendorVO().equals(vendorVO)) {
				vendorRatingList.add(commentVO2);
				
			}
		}
		
		System.out.println("Vendor Rating List: " + vendorRatingList);
		
	  return new ModelAndView("vendor/vendorRatings", "vendorRatingList", vendorRatingList);
	}
	
}
