package com.satvikfoodfinder.service;

import java.security.Principal;
import java.util.List;

import com.satvikfoodfinder.entity.CommentVO;
import com.satvikfoodfinder.entity.FeedbackVO;
import com.satvikfoodfinder.entity.LoginVO;

public interface FeedbackService  {

	void save(FeedbackVO feedbackVO);
	
	List<FeedbackVO> getFeedbackbyType(String role, Principal principal);
	
	List<FeedbackVO> findAll();
	
	FeedbackVO getFeedbackVOfromCommentVO(CommentVO commentVO, LoginVO loginVO);
}
