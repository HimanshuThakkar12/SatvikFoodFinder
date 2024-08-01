package com.satvikfoodfinder.service;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.ManageCityInfo;
import com.satvikfoodfinder.entity.CityInfo;

@Service
@Transactional
public class CityServiceImpl implements CityService{

	@Autowired
	ManageCityInfo cityRepository;
	
	@Override
	public void save(CityInfo cityInfo) {

		cityRepository.save(cityInfo);
		
	}

	@Override
	public List<CityInfo> findAll() {
		
		return cityRepository.findAll();
	}

	@Override
	public CityInfo deleteCityItem(int cityId) {
		CityInfo cityItem = cityRepository.findById(cityId).get();
		cityRepository.deleteById(cityId);
		return cityItem;
	}

	@Override
	public CityInfo findById(int cityId) {
		
		return cityRepository.findById(cityId).get();
	}

	@Override
	public Set<String> getAllCity() {
		
		List<CityInfo> cityInfoDetaiis = cityRepository.findAll();
		Set<String> cityNames = new LinkedHashSet<>();
		
		for (Iterator iterator = cityInfoDetaiis.iterator(); iterator.hasNext();) {
			CityInfo cityInfo = (CityInfo) iterator.next();
			
			cityNames.add(cityInfo.getCityName());
			
		}
		
		return cityNames;
	}

}
