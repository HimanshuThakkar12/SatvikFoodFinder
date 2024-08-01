package com.satvikfoodfinder.controller;

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
import com.satvikfoodfinder.entity.AreaInfo;
import com.satvikfoodfinder.service.AreaServiceImpl;

@Controller
@RequestMapping("/admin/")
public class AreaController {
	@Autowired
	private AreaServiceImpl areaServiceImpl;

	@RequestMapping("/addArea")
	public String addArea() {
		System.out.println("Add Area Controller Fired..");
		return "admin/addArea";
	}

	@GetMapping("/viewArea")
	public ModelAndView viewArea() {
		System.out.println("View Area Controller Fired..");
		List<AreaInfo> areaInfo = areaServiceImpl.findAll();
		System.out.println();
		/*
		 * for (Iterator iterator = areaInfo.iterator(); iterator.hasNext();) { AreaInfo
		 * areaInfo2 = (AreaInfo) iterator.next(); System.out.println(areaInfo2);
		 * 
		 * }
		 */

		return new ModelAndView("admin/viewArea", "areaInfo", areaInfo);
	}

//	@RequestParam(value = "areaName", defaultValue  = "area name") String areaName, @RequestParam(value = "areaPincode", defaultValue  = "area pincode") String areaPincode,   @RequestParam(value = "areaDescription", defaultValue  = "area description") String areaDescription

	@PostMapping("/saveArea")
	public String saveArea(@ModelAttribute AreaInfo areaInfo) {
		System.out.println("save area Controller Fired..");
		areaServiceImpl.save(areaInfo);
		System.out.println("Data Save successfully for ID: " + areaInfo.getAreaId());
		return "admin/addArea";
	}

	@RequestMapping("deleteArea/{areaId}")
	public String deleteArea(@PathVariable int areaId) {
		System.out.println("delete city controller fired .. " + areaId);
		AreaInfo areaItem = areaServiceImpl.deleteAreaItem(areaId);
		System.out.println(" Data Deleted Successfully for ID .. " + areaItem.getAreaId());
		return "redirect:/admin/viewArea";
	}

	@RequestMapping("setUpdateAreaInfo")
	public ModelAndView updateArea(@RequestParam int areaId, ModelAndView model) {
		System.out.println("update area controller fired ..");
		AreaInfo areaItem = areaServiceImpl.findById(areaId);

		System.out.println("Data for Updation Page get Successfully .. ");
		model.addObject("areaItem", areaItem);
		model.setViewName("admin/updateArea");
//		System.out.println(areaItem);
		return model;
	}

//	@RequestParam(value = "areaId")int areaId, @RequestParam(value = "areaName", defaultValue  = "area name") String areaName, @RequestParam(value = "areaPincode", defaultValue  = "area pincode") String areaPincode,  @RequestParam(value = "areaDescription", defaultValue  = "area description") String areaDescription

	@RequestMapping(value = "updateAreaData", method = RequestMethod.POST)
	public String updateAreaData(@ModelAttribute AreaInfo areaInfo) {
		System.out.println("data updated sucessfully for ID : " + areaInfo.getAreaId());

		areaServiceImpl.save(areaInfo);
		return "redirect:/admin/viewArea";
	}
}
