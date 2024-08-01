package com.satvikfoodfinder.service;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.ManageAreaInfo;
import com.satvikfoodfinder.entity.AreaInfo;

@Service
@Transactional
public class AreaServiceImpl implements AreaService {

	@Autowired
	private ManageAreaInfo manageAreaInfo;

	@Override
	public void save(AreaInfo areaInfo) {
		manageAreaInfo.save(areaInfo);
		
	}

	@Override
	public List<AreaInfo> findAll() {
		
		return manageAreaInfo.findAll();
	}

	@Override
	public AreaInfo deleteAreaItem(int areaId) {
		AreaInfo areaInfo = manageAreaInfo.findById(areaId).get();
		manageAreaInfo.deleteById(areaId);
		return areaInfo;
	}

	@Override
	public AreaInfo findById(int areaId) {
		return manageAreaInfo.findById(areaId).get();
	}

	@Override
	public Set<String> getAllAreaName() {
		List<AreaInfo> areaInfoDetails =  manageAreaInfo.findAll();
		Set<String> linkedHashSet = new LinkedHashSet<>();
		for (Iterator iterator = areaInfoDetails.iterator(); iterator.hasNext();) {
			AreaInfo areaInfo = (AreaInfo) iterator.next();
			linkedHashSet.add(areaInfo.getAreaName());
		}
		 
		
		return linkedHashSet;
	}
	
	

}
