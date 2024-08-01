package com.satvikfoodfinder.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.satvikfoodfinder.entity.ComplainVO;
import com.satvikfoodfinder.entity.LoginVO;


public interface ComplainDAO extends JpaRepository<ComplainVO, Integer> {

	List<ComplainVO> findAllById(int id);
	
}
