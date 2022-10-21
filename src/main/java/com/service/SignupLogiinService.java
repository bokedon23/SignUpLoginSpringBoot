package com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.user.UserDto;
import com.userentity.UserEntity;


public interface SignupLogiinService {
	
	public void doSignup(UserDto userDto);
	
	public UserDto doLogin(String username,String password);
	
	public List<UserDto> fetchAllEmplyees();
	
	public UserDto fetchRecord(int uid);

}
