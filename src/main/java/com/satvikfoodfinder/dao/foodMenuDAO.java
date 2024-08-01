package com.satvikfoodfinder.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.satvikfoodfinder.entity.FoodMenu;


public interface foodMenuDAO extends JpaRepository<FoodMenu, Integer>{

	@Query("SELECT v FROM FoodMenu v WHERE v.day = ?1 and v.category = ?2")
	public List<FoodMenu> findByDayAndCategory(String day, String category);
}

