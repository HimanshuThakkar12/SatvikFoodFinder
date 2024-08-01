package com.satvikfoodfinder.service;

import com.satvikfoodfinder.entity.LoginVO;
import com.satvikfoodfinder.entity.UserVO;
import com.satvikfoodfinder.entity.VendorVO;

public interface LoginService {

	void save(LoginVO loginVO);
	
	LoginVO saveUserInfo(UserVO userVO);
	
	LoginVO saveVendorInfo(VendorVO vendorVo);
	

	LoginVO findByID(int id);
	
	LoginVO searchLoginID(LoginVO loginVO);
	
	void saveUpdateUser(LoginVO loginVO, String userName, String email);
}
