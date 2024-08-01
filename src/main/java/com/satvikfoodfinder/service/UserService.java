package com.satvikfoodfinder.service;

import java.util.List;
import com.satvikfoodfinder.entity.UserVO;

public interface UserService {
	void save(UserVO userVO);
	
	List<UserVO> getAllUsers();
	
	UserVO findByUserName(String userName);
	
}
