package com.satvikfoodfinder.service;

import java.util.List;
import java.util.Set;

import com.satvikfoodfinder.entity.AreaInfo;


public interface AreaService {

	void save(AreaInfo areaInfo);
	
	List< AreaInfo > findAll();
	
	AreaInfo deleteAreaItem(int areaId);
	
	AreaInfo findById(int areaId);
	
	Set<String> getAllAreaName();
}
