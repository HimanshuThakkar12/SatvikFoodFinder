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

import com.satvikfoodfinder.dao.ManageCityInfo;
import com.satvikfoodfinder.entity.CityInfo;
import com.satvikfoodfinder.service.CityServiceImpl;

@Controller
@RequestMapping("/admin/")
public class CityController {

	@Autowired
	private CityServiceImpl cityServiceImpl;

	@RequestMapping(value = "/addCity", method = RequestMethod.GET)
	public String addCity() {
		System.out.println("Add City Controller Fired..");
		return "admin/addCity";
	}

	@GetMapping("/viewCity")
	public ModelAndView viewCity() {
		System.out.println("View City Controller Fired..");
		List<CityInfo> viewInfo = cityServiceImpl.findAll();
		System.out.println("Data for viewCity is received ..");
		/*
		 * for (Iterator iterator = viewInfo.iterator(); iterator.hasNext();) { CityInfo
		 * cityInfo = (CityInfo) iterator.next(); System.out.println(cityInfo); }
		 */
		return new ModelAndView("admin/viewCity", "viewInfo", viewInfo);
	}

//	@RequestParam(value = "cityName", defaultValue  = "city name") String cityName, @RequestParam(value = "cityDescription", defaultValue  = "city description") String cityDescription

	@PostMapping("/saveCity")
	public ModelAndView saveCity(@ModelAttribute() CityInfo cityInfo, ModelAndView model) {
		System.out.println("save City Controller Fired..");
		System.out
				.println("City Name: " + cityInfo.getCityName() + "city Description: " + cityInfo.getCityDescription());
		cityServiceImpl.save(cityInfo);
		System.out.println("Data Save Successfully for: " + cityInfo.getCityId());
		model.setViewName("admin/addCity");

		return model;
	}

	@RequestMapping("deleteCity/{cityId}")
	public String deleteCity(@PathVariable int cityId) {
		System.out.println("delete city controller fired .. " + cityId);
		CityInfo cityItem = cityServiceImpl.deleteCityItem(cityId);
		System.out.println("Data for ID: " + cityId + " deleted Successfully ..");
		return "redirect:/admin/viewCity";
	}

	@RequestMapping("setUpdateCityInfo")
	public ModelAndView updateCity(@RequestParam int cityId, ModelAndView model) {
		System.out.println("update city controller fired ..");
		CityInfo cityItem = cityServiceImpl.findById(cityId);
		System.out.println(" Data for Updation page received ..");
		model.addObject("cityItem", cityItem);
		model.setViewName("admin/updateCity");
		return model;
	}

//	@RequestParam(value = "cityId")int cityId, @RequestParam(value = "cityName", defaultValue  = "city name") String cityName, @RequestParam(value = "cityDescription", defaultValue  = "city description") String cityDescription

	@RequestMapping(value = "updateCityData", method = RequestMethod.POST)
	public String updateCityData(@ModelAttribute CityInfo cityInfo) {
//		System.out.println("something new fired for updating city data: " + cityInfo.getCityId() + cityInfo.getCityName() + cityInfo.getCityDescription());	
		System.out.println("Data Updation for ID: " + cityInfo.getCityId() + " done successfully..");
		cityServiceImpl.save(cityInfo);
		return "redirect:/admin/viewCity";
	}
}
