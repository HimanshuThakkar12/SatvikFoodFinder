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
@Table(name = "food_menu")
public class FoodMenu {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int foodID;

	@Column(name = "day")
	private String day;

	@Column(name = "category")
	private String category;

	@Column(name = "dishName")
	private String dishName;

	@Column(name = "dishPrice")
	private String dishPrice;

	@Column(name = "startTime")
	private String startTime;

	@Column(name = "endTime")
	private String endTime;
	
	@Column(name = "status")
	private Boolean status = true;
	
	@ManyToOne
	@JoinColumn(name = "vendor_id")
	private VendorVO vendorvo;

	public int getFoodID() {
		return foodID;
	}

	public void setFoodID(int foodID) {
		this.foodID = foodID;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public String getDishPrice() {
		return dishPrice;
	}

	public void setDishPrice(String dishPrice) {
		this.dishPrice = dishPrice;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public VendorVO getVendorvo() {
		return vendorvo;
	}

	public void setVendorvo(VendorVO vendorvo) {
		this.vendorvo = vendorvo;
	}

	@Override
	public String toString() {
		return "FoodMenu [day=" + day + ", category=" + category + ", dishName=" + dishName + ", dishPrice=" + dishPrice
				+ ", startTime=" + startTime + ", endTime=" + endTime + ", status=" + status + "]";
	}

	public FoodMenu(String day, String category, String dishName, String dishPrice, String startTime, String endTime,
			Boolean status) {
		super();
		this.day = day;
		this.category = category;
		this.dishName = dishName;
		this.dishPrice = dishPrice;
		this.startTime = startTime;
		this.endTime = endTime;
		this.status = status;
	}

	public FoodMenu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	

}
