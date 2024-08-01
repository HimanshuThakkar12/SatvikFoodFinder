package com.satvikfoodfinder.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.satvikfoodfinder.entity.CityInfo;

public interface ManageCityInfo extends JpaRepository<CityInfo, Integer> {

}
