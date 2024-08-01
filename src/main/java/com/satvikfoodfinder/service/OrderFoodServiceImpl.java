package com.satvikfoodfinder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class OrderFoodServiceImpl implements OrderFoodService {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List getOrderCountByMonth(int i) {
		// TODO Auto-generated method stub
		String query = "SELECT COUNT(*) AS total, vr.user_name AS vendor FROM Order_Food_Detais AS ot "
				+ " INNER JOIN vendor_reg_details AS vr ON ot.vendor_id= vr.id"
				+ " WHERE ot.status ='1' AND order_month="+i+" GROUP BY ot.vendor_id";
		Session session = sessionFactory.openSession();
		Query q = session.createSQLQuery(query);
		List<?> ls = q.list();
		return ls;
		
	}

}
