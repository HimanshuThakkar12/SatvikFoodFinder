package com.satvikfoodfinder.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.satvikfoodfinder.entity.LoginVO;

public interface LoginDAO extends JpaRepository<LoginVO, Integer> {

	public LoginVO findByUserName(String username);
}
