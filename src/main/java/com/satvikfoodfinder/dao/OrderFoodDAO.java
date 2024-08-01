package com.satvikfoodfinder.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.satvikfoodfinder.entity.OrderFoodDetail;
import com.satvikfoodfinder.entity.VendorVO;

public interface OrderFoodDAO extends JpaRepository<OrderFoodDetail, Integer> { 

	@Query("SELECT COUNT(*), v.orderMonth FROM OrderFoodDetail v WHERE v.vendorVO =?1 GROUP BY orderMonth")
	List getOrderCountByVendorId(VendorVO vendorVO);
	
	
	@Query("SELECT COUNT(*) AS total, vr.userName AS vendor FROM OrderFoodDetail AS ot " + " INNER JOIN VendorVO AS vr ON ot.vendorVO= vr.id "+ "WHERE ot.status ='1' AND ot.orderMonth =?1 GROUP BY ot.vendorVO")
	List getOrderCountByMonth(String i);
}
