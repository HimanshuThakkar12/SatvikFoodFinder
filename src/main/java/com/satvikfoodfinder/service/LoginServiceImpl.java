package com.satvikfoodfinder.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.LoginDAO;
import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.entity.UserVO;
import com.satvikfoodfinder.entity.VendorVO;

import java.util.List;

import javax.transaction.Transactional;

@Service
@Transactional 
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDAO loginDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;


	@Override
	public void save(LoginVO loginVO) {
		// TODO Auto-generated method stub
		this.loginDAO.save(loginVO);
	}

	@Override
	public LoginVO saveUserInfo(UserVO userVO) {
		int enabled = 1;
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(userVO.getEmail());
		loginVO.setEnabled(enabled);
		loginVO.setPassword(bCryptPasswordEncoder.encode(userVO.getPassword()));
		loginVO.setRole("ROLE_USER");
		loginVO.setStatus(userVO.isStatus());
		loginVO.setUserName(userVO.getUsername());

		return loginVO;
	}

	@Override
	public LoginVO saveVendorInfo(VendorVO vendorVO) {
		// TODO Auto-generated method stub
		int enabled = 0;
		
		if(vendorVO.isFlag() == true) {
			enabled = 1;
		}
		LoginVO loginVO = new LoginVO();
		loginVO.setEmail(vendorVO.getEmail());
		loginVO.setEnabled(enabled);
		loginVO.setPassword(bCryptPasswordEncoder.encode(vendorVO.getPassword()));
		loginVO.setRole("ROLE_VENDOR");
		loginVO.setStatus(vendorVO.isStatus());
		loginVO.setUserName(vendorVO.getUserName());

		return loginVO;
	}

	@Override
	public LoginVO findByID(int id) {
		
		return loginDAO.findById(id).get();
	}

	@Override
	public LoginVO searchLoginID(LoginVO loginVO) {
		LoginVO loginUser = loginDAO.findByUserName(loginVO.getUserName());
		
		System.out.println("######" + loginUser);
		return loginUser;
	}

	@Override
	public void saveUpdateUser(LoginVO loginVO, String userName, String email) {
		

		//  System.out.println("############################## UPDATED " + loginVO + "###########################3");
		loginVO.setUserName(userName);
		loginVO.setEmail(email);
		System.out.println("########################" + loginVO + "#####################");
		loginDAO.save(loginVO);
		System.out.println("Data Updated Successfuly for user role ROLE_USER");
	}


	
}
