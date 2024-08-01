package com.satvikfoodfinder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "areainformation")
public class AreaInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int areaId;

	@Column(name = "area_name")
	private String areaName;

	@Column(name = "area_description")
	private String areaDescription;

	@Column(name = "area_pincode")
	private String areaPincode;

	@Column(name = "cityName")
	private String cityName;

	public int getAreaId() {
		return areaId;
	}

	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getAreaDescription() {
		return areaDescription;
	}

	public void setAreaDescription(String areaDescription) {
		this.areaDescription = areaDescription;
	}

	public String getAreaPincode() {
		return areaPincode;
	}

	public void setAreaPincode(String areaPincode) {
		this.areaPincode = areaPincode;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public AreaInfo(int areaId, String areaName, String areaDescription, String areaPincode, String cityName) {
		super();
		this.areaId = areaId;
		this.areaName = areaName;
		this.areaDescription = areaDescription;
		this.areaPincode = areaPincode;
		this.cityName = cityName;
	}

	@Override
	public String toString() {
		return "AreaInfo [areaId=" + areaId + ", areaName=" + areaName + ", areaDescription=" + areaDescription
				+ ", areaPincode=" + areaPincode + ", cityName=" + cityName + "]";
	}

	public AreaInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

}
