package com.satvikfoodfinder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "vendorRegDetails")
public class VendorVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "userName")
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "email")
	private String email;

	@Column(name = "address")
	private String address;

	@Column(name = "shopName")
	private String shopName;

	@Column(name = "contactno")
	private String contactno;

	@Column(name = "Gender")
	private String gender;

	@Column(name = "cityName")
	private String cityName;

	@Column(name = "areaName")
	private String areaName;

	@Column(name = "status")
	private boolean status = true;

	@Column(name = "flag")
	private boolean flag = false;

	@Column
	private String fileName;

	@Column
	private String filePath;

	@OneToOne
	@JoinColumn(name = "Login_id")
	@JsonIgnore
	private LoginVO loginvo;

	@Override
	public String toString() {
		return "VendorVO [id=" + id + ", userName=" + userName + ", password=" + password + ", email=" + email
				+ ", address=" + address + ", shopName=" + shopName + ", contactno=" + contactno + ", gender=" + gender
				+ ", cityName=" + cityName + ", areaName=" + areaName + ", status=" + status + ", flag=" + flag
				+ ", fileName=" + fileName + ", filePath=" + filePath + ", loginvo=" + loginvo + "]";
	}

	public VendorVO(int id, String userName, String password, String email, String address, String contactno,
			String gender, String cityName, String areaName, boolean status, boolean flag, String fileName,
			String filePath, com.satvikfoodfinder.entity.LoginVO loginvo) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.address = address;
		this.contactno = contactno;
		this.gender = gender;
		this.cityName = cityName;
		this.areaName = areaName;
		this.status = status;
		this.flag = flag;
		this.fileName = fileName;
		this.filePath = filePath;
		this.loginvo = loginvo;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public LoginVO getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}

	public VendorVO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
