package com.satvikfoodfinder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriUtils;

import com.satvikfoodfinder.dao.foodMenuDAO;
import com.satvikfoodfinder.entity.FoodMenu;
import com.satvikfoodfinder.entity.ServiceResponse;
import com.satvikfoodfinder.entity.VendorVO;
import com.satvikfoodfinder.service.VendorServiceImpl;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;

@RestController
public class TestController {

	@Autowired
	foodMenuDAO foodMenuDAO;

	@Autowired
	VendorServiceImpl vendorServiceImpl;

	@RequestMapping("testPage")
	public ModelAndView testpage(ModelAndView model, HttpSession session) {
		System.out.println("test Cintroller call..");
		session.setAttribute("name", session);
		model.addObject("name", "Aaditya here ");
		model.setViewName("testPage");
		return model;
	}

	@PostMapping("user/searchFoodMenu")
	public ResponseEntity<Object> searchFoodMenu(@RequestParam("vendorid") String vendorid,
			@RequestParam("day") String day, @RequestParam("category") String category) throws Exception {
		String encodeValue = URLEncoder.encode(category, StandardCharsets.UTF_8);

		System.out.println("############################" + vendorid + day + category);

		VendorVO vendorVO = vendorServiceImpl.findByID(Integer.parseInt(vendorid));

		List<FoodMenu> allFoodList = foodMenuDAO.findByDayAndCategory(day, category);

		List<FoodMenu> foodList = new LinkedList<>();
		System.out.println("Food List: " + allFoodList);

		for (Iterator iterator = allFoodList.iterator(); iterator.hasNext();) {
			FoodMenu foodMenu = (FoodMenu) iterator.next();

			if (foodMenu.getVendorvo().equals(vendorVO)) {

				foodList.add(foodMenu);
			}

		}

		ServiceResponse<List<FoodMenu>> response = new ServiceResponse<>("success", foodList);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	

}
