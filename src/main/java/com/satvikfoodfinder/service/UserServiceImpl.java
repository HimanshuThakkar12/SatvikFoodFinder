package com.satvikfoodfinder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.UserDAO;
import com.satvikfoodfinder.entity.UserVO;

@Service
@Transactional 
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	@Override
	public void save(UserVO userVO) {
		userDAO.save(userVO);
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<UserVO> getAllUsers() {
		List<UserVO> userList = userDAO.findAll();
		return userList;
	}
	public UserVO findByID(int id) {
		// TODO Auto-generated method stub
		
		UserVO userVO = userDAO.findById(id).get();
		return userVO;
	}

	@Override
	public UserVO findByUserName(String userName) {
		// TODO Auto-generated method stub
		return userDAO.findByUsername(userName);
	}
	
	


}
