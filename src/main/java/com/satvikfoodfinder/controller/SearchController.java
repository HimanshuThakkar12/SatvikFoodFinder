package com.satvikfoodfinder.controller;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.satvikfoodfinder.dao.VendorDAO;
import com.satvikfoodfinder.entity.VendorVO;

@RestController
public class SearchController {

	@Autowired
	private VendorDAO vendorDAO;

	@GetMapping("user/search")
	public ResponseEntity<?> searchVendor(@RequestParam String query) {
		System.out.println(query);
		System.out.println("Search Controller fired..");
		List<VendorVO> vendors = this.vendorDAO.findByCityNameContainingIgnoreCase(query);

		List<VendorVO> activeVendors = new LinkedList<>();
		
		for (Iterator iterator = vendors.iterator(); iterator.hasNext();) {
			VendorVO vendorVO = (VendorVO) iterator.next();
			if (vendorVO.isFlag() && (vendorVO.isStatus())) {

				activeVendors.add(vendorVO);
			}

		}

		/* System.out.println(vendors); */

		System.out.println(activeVendors);
		return ResponseEntity.ok(activeVendors);
	}

}
