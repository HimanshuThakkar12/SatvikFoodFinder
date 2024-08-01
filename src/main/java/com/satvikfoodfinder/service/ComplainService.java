package com.satvikfoodfinder.service;

import java.util.List;

import com.satvikfoodfinder.entity.ComplainVO;

public interface ComplainService {

	List<ComplainVO> findAllByLoginVO(int id);
	
	List<ComplainVO> findAllComplains();
	
	ComplainVO findById(int id);
	
	void save(ComplainVO complainVO);
	
	void deleteCompalian(int id);
}

