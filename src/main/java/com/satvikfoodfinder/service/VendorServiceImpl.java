package com.satvikfoodfinder.service;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.satvikfoodfinder.dao.VendorDAO;
import com.satvikfoodfinder.entity.VendorVO;


@Service
@Transactional
public class VendorServiceImpl implements VendorService{

	@Autowired
	VendorDAO vendorDAO;
	
	@Override
	public void save(VendorVO vendorVO) {
		
		System.out.println("Vendor data saved successfully in vendorRegDetails table");
		vendorDAO.save(vendorVO);
		
	}

	@Override
	public List<VendorVO> getRequestedVendor() {
		
		List<VendorVO> vendorList = vendorDAO.findAll();
		
		List<VendorVO> requestedVendorList = new LinkedList<>();
		
		for (Iterator iterator = vendorList.iterator(); iterator.hasNext();) {
			VendorVO vendorVO = (VendorVO) iterator.next();
			
			if ((!vendorVO.isFlag()) && (vendorVO.isStatus())) {
				requestedVendorList.add(vendorVO);
			}
			
		}
		return requestedVendorList;
	}
	@Override
	public VendorVO findByID(int id) {
		
		return vendorDAO.findById(id).get();
	}
	@Override
	public List<VendorVO> getAllVendors() {
		
		return vendorDAO.findAll();
	}

	@Override
	public VendorVO getUserByUserName(String userName) {
		// TODO Auto-generated method stub
		
		VendorVO vendorVO = vendorDAO.findByUserName(userName);
//		System.out.println("Login Vendor is: "+vendorVO);
		
		return vendorVO;
	}

}
