package com.satvikfoodfinder.service;

import java.security.Principal;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.FeedbackDAO;
import com.satvikfoodfinder.entity.CommentVO;
import com.satvikfoodfinder.entity.FeedbackVO;
import com.satvikfoodfinder.entity.LoginVO;

@Service
@Transactional
public class FeedbackServiceImpl implements FeedbackService {

	@Autowired
	FeedbackDAO feedbackDAO;
	@Autowired
	LoginServiceImpl loginServiceImpl;

	@Override
	public void save(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub

		feedbackDAO.save(feedbackVO);

	}

	@Override
	public List<FeedbackVO> getFeedbackbyType(String role, Principal principal) {
		// TODO Auto-generated method stub
		
		String userName = principal.getName();
		LoginVO loginVO = new LoginVO();
		loginVO.setUserName(userName);
		LoginVO loginVO1 = loginServiceImpl.searchLoginID(loginVO);
		System.out.println("Login User Information: " + loginVO1);
		if(loginVO1.getRole() == role) {
			
			List<FeedbackVO> feedbackList = feedbackDAO.findAll();
			for (Iterator iterator = feedbackList.iterator(); iterator.hasNext();) {
				FeedbackVO feedbackVO = (FeedbackVO) iterator.next();
				System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$" + feedbackVO + "$$$$$$$$$$$$$$$$$$$$$$$$");
				
			}
			return feedbackList;
		}
		
		else {
			List<FeedbackVO> feedbackList = new LinkedList<>();
			FeedbackVO feedbackVO = new FeedbackVO();
			feedbackVO.setFeedbackRating("4");
			feedbackVO.setFeedbackSubject("test");
			feedbackList.add(feedbackVO);
			return feedbackList;
			
		}
		
		
		
	}

	@Override
	public List<FeedbackVO> findAll() {
		// TODO Auto-generated method stub
		return feedbackDAO.findAll();
	}

	@Override
	public FeedbackVO getFeedbackVOfromCommentVO(CommentVO commentVO, LoginVO loginVO) {
		// TODO Auto-generated method stub
		String feedbackRating = commentVO.getVendorRating();
		String feedbackSubject = commentVO.getComment();
		
		FeedbackVO feedbackVO = new FeedbackVO();
		feedbackVO.setFeedbackRating(feedbackRating);
		feedbackVO.setFeedbackSubject(feedbackSubject);
		feedbackVO.setLoginVO(loginVO);
		
		// System.out.println("$$$$$$$$$$$$$$$$$$$$$$" + feedbackVO);
		return feedbackVO;
	}

}
