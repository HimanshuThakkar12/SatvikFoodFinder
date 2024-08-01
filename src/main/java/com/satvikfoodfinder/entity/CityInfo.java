package com.satvikfoodfinder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cityinformation")
public class CityInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cityId;
	
	@Column(name = "city_name")
	private String cityName;
	
	@Column(name = "city_desc")
	private String cityDescription;
	
	public CityInfo(int cityId, String cityName, String cityDescription) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.cityDescription = cityDescription;
	}

	public int getCityId() {
		return cityId;
	}
	
	

	@Override
	public String toString() {
		return "CityInfo [cityId=" + cityId + ", cityName=" + cityName + ", cityDescription=" + cityDescription + "]";
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCityDescription() {
		return cityDescription;
	}

	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
	}

	public CityInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
