 package com.satvikfoodfinder.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.satvikfoodfinder.entity.UserVO;

public interface UserDAO extends JpaRepository<UserVO, Integer>{

	UserVO findByUsername(String username); 
}
