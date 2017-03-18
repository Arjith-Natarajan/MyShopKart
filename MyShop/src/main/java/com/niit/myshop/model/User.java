package com.niit.myshop.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "USER")
public class User implements Serializable{

	@Id	
	@GeneratedValue
    @Column(name = "USER_ID", unique = true, nullable = false)
    private int userId;
	
	@Column(name = "F_NAME", nullable = false)
	private String firstName;
	
	@Column(name = "L_NAME")
	private String lastName;
	
	@Column(name = "MOBILE")
	private Long mobileNo;
	

    @Column(name = "USER_NAME", nullable = false, length = 32)
    private String userName;

    @Column(name = "PASSWORD", nullable = false, length = 64)
    private String password;
    
    @Column(name = "EMAIL",unique =true , nullable = false)
    private String emailId;

    @Column(name = "ACTIVE", nullable = false)
    private boolean active = true;
    
    @Column(name = "ROLE")
    private String role = "ROLE_USER";

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", userName="
				+ userName + ", password=" + password + ", emailId=" + emailId + ", active=" + active + ", role=" + role
				+ "]";
	}

	public Long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}
	
}