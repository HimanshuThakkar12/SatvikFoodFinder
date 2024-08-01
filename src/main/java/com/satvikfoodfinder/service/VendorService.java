package com.satvikfoodfinder.service;

import java.util.List;

import com.satvikfoodfinder.entity.VendorVO;

public interface VendorService {

	void save(VendorVO vendorVO);
	
	List<VendorVO> getRequestedVendor();
	
    VendorVO findByID(int id);
    
    List<VendorVO> getAllVendors();
    
    VendorVO getUserByUserName(String userName);
    
    
}
