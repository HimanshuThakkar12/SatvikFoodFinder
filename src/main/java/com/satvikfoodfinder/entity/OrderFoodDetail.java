package com.satvikfoodfinder.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Order_Food_Detais")
public class OrderFoodDetail {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="orderId")
	private int orderId;
	
	@Column(name="userName")
	private String userName;
	
	@Column(name="contactno")
	private String contactno;
	
	@Column(name="email")
	private String email;
	
	@Column(name="address")
	private String address;
	
	@Column(name="category")
	private String category;
	
	@Column(name="dishName")
	private String dishName;
	
	@Column(name="dishPrice")
	private String dishPrice;
	
	@Column(name="totalDish")
	private String totalDish;
	
	@Column(name="totalBill")
	private String totalBill;
	
	@Column(name="status")
	private boolean status=false;
	
	@Column(name = "orderDate")
	private String orderDate;

	@Column(name = "orderMonth")
	private String orderMonth;

	
	@ManyToOne
	@JoinColumn(name = "vendor_id")
	private VendorVO vendorVO;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getTotalDish() {
		return totalDish;
	}

	public void setTotalDish(String totalDish) {
		this.totalDish = totalDish;
	}

	public String getTotalBill() {
		return totalBill;
	}

	public void setTotalBill(String totalBill) {
		this.totalBill = totalBill;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public VendorVO getVendorVO() {
		return vendorVO;
	}

	public void setVendorVO(VendorVO vendorVO) {
		this.vendorVO = vendorVO;
	}

	

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	
	@Override
	public String toString() {
		return "OrderFoodDetail [orderId=" + orderId + ", userName=" + userName + ", contactno=" + contactno
				+ ", email=" + email + ", address=" + address + ", category=" + category + ", dishName=" + dishName
				+ ", dishPrice=" + dishPrice + ", totalDish=" + totalDish + ", totalBill=" + totalBill + ", status="
				+ status + ", orderDate=" + orderDate + ", orderMonth=" + orderMonth + ", vendorVO=" + vendorVO + "]";
	}

	public String getOrderMonth() {
		return orderMonth;
	}

	public void setOrderMonth(String orderMonth) {
		this.orderMonth = orderMonth;
	}

	public OrderFoodDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	
	
	
}
