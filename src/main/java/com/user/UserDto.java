package com.user;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class UserDto {
	
	private int uid;
	private String email;
	private String username;
	private String password;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserDto [uid=" + uid + ", email=" + email + ", username=" + username + ", password=" + password + "]";
	}
	
	
	
	

}
