package com.satvikfoodfinder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "login_table")
public class LoginVO {

	@Id
	@Column(name = "loginId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userID;
	
	@Column(name = "username")
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "role")
	private String role;
	

	@Column(name = "email")
	private String email;

	@Column(name = "enabled")
	private int enabled;

	@Column(name = "status")
	private Boolean status = true;
	

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "LoginVO [userId=" + userID + ", userName=" + userName + ", password=" + password + ", role=" + role + ", email="
				+ email + ", enabled=" + enabled + ", status=" + status + "]";
	}

	

	
}

