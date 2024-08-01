package com.satvikfoodfinder.service;

import java.util.List;
import java.util.Set;

import com.satvikfoodfinder.entity.CityInfo;

public interface CityService{

	void save(CityInfo cityInfo);
	
	List< CityInfo > findAll();
	
	CityInfo deleteCityItem(int cityId);
	
	CityInfo findById(int cityId);
	
	Set<String> getAllCity();
}
