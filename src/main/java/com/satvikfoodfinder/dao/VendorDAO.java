package com.satvikfoodfinder.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.satvikfoodfinder.entity.VendorVO;

public interface VendorDAO extends JpaRepository<VendorVO, Integer>{


	@Query("SELECT v FROM VendorVO v WHERE v.cityName LIKE %:cityName%")
	public List<VendorVO> findByCityNameContainingIgnoreCase(String cityName);
	
	public VendorVO findByUserName(String userName);
	
	
	
}
