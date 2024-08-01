package com.satvikfoodfinder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.satvikfoodfinder.entity.LoginVO;

@Entity
@Table(name = "user_reg")
public class UserVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "email")
	private String email;

	@Column(name = "Gender")
	private String gender;

	@Column(name = "status")
	private boolean status = true;

	@ManyToOne
	@JoinColumn(name = "Login_id")
	private LoginVO loginvo;

	public LoginVO getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", gender=" + gender + ", status=" + status + ", loginvo=" + loginvo + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


}
