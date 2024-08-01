package com.satvikfoodfinder.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.satvikfoodfinder.entity.ComplainVO;
import com.satvikfoodfinder.service.ComplainServiceImpl;
import com.satvikfoodfinder.service.LoginServiceImpl;

@Controller
public class ComplainController {

	@Autowired
	ComplainServiceImpl complainServiceImpl;
	
	
	
	@Autowired
	LoginServiceImpl loginServiceImpl;
	
	@GetMapping("admin/viewAllComplains")
	public ModelAndView viewAllComplains(ModelAndView model) {
		List<ComplainVO> complainList = this.complainServiceImpl.findAllComplains();
		return new ModelAndView("admin/viewComplain1", "complainList", complainList);
	}
	
	@GetMapping("admin/replyComplains1")
	public ModelAndView replyComplains(@RequestParam int id) {
		ComplainVO complainVO = new ComplainVO();
		complainVO.setId(id);
		ComplainVO complainList = this.complainServiceImpl.findById(complainVO.getId());
		return new ModelAndView("admin/replyComplains", "complainVO",  complainList);
	}
	
	@PostMapping("admin/saveComplainsReplay")
	public ModelAndView saveComplainsReplay(@ModelAttribute ComplainVO complainVO) {
		System.out.println("Complain Reply Controller Called .. ");
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVO.setReplayDateTime(strDate);
		complainVO.setComplainStatus("Resolved");

		this.complainServiceImpl.save(complainVO);
		return new ModelAndView("redirect:viewAllComplains");
	}
	
	@GetMapping("admin/deleteComplains")
	public ModelAndView deleteComplain(@RequestParam int id, ModelAndView model) {
	System.out.println(" delete Complain Controller fired..");
	complainServiceImpl.deleteCompalian(id);
	
	return new ModelAndView("redirect:viewAllComplains");
		
	}
	
}
