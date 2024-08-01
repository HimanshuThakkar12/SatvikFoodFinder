package com.satvikfoodfinder.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.satvikfoodfinder.entity.FeedbackVO;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.service.FeedbackServiceImpl;
import com.satvikfoodfinder.service.LoginServiceImpl;
import com.satvikfoodfinder.utils.BaseMethods;


@Controller
public class FeedbackController {

	@Autowired
	LoginServiceImpl loginServiceImpl;
	
	@Autowired
	FeedbackServiceImpl feedbackServiceImpl;
	
	@GetMapping("admin/viewFeedback")
	public ModelAndView viewFeedback() {
		List<?> feedbackList = this.feedbackServiceImpl.findAll();
		return new ModelAndView("admin/viewFeedback", "feedbackList", feedbackList);
	}

	@GetMapping("user/addUserFeedback")
	public ModelAndView addUserFeedback(@ModelAttribute FeedbackVO feedbackVO, ModelAndView model, Principal principal) 
	{
		String userName = BaseMethods.getUserName();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);
		LoginVO loginVO1 = this.loginServiceImpl.searchLoginID(loginVO);
		feedbackVO.setLoginVO(loginVO1);
		
		 List<FeedbackVO> feedbackList = this.feedbackServiceImpl.getFeedbackbyType(loginVO1.getRole(), principal);
		// System.out.println("###################################" + feedbackList + "#######################################");
		/*
		 * return new ModelAndView("user/addFeedback", "feedbackVO", new
		 * FeedbackVO()).addObject("feedbackuserList", feedbackList);
		 */
		 model.addObject("feedbackuserList", feedbackList);
		
		model.setViewName("user/addFeedback");
		model.addObject( "feedbackVO", new FeedbackVO());
		
		
		return model;
	}
	
	@PostMapping("user/saveUserFeedback")
	public ModelAndView saveUserFeedback(@ModelAttribute FeedbackVO feedbackVO, @RequestParam String rating) {
		
		  String userName = BaseMethods.getUserName(); 
		  LoginVO loginVO = new LoginVO();
		  loginVO.setUserName(userName);
		  LoginVO loginVO1 =this.loginServiceImpl.searchLoginID(loginVO); 
		  feedbackVO.setLoginVO(loginVO1);
		  feedbackVO.setFeedbackRating(rating);
		  
		   this.feedbackServiceImpl.save(feedbackVO);
		 
		System.out.println(feedbackVO);
		/*List<?> feedbackList = this.feedbackService.getFeedback();
		System.out.print(feedbackList.size());*/
		/*return new ModelAndView("user/addFeedback", "feedbackVO", new FeedbackVO()).addObject("feedbackuserList",
				feedbackList);*/
		return new ModelAndView("redirect:addUserFeedback");
	}

}
