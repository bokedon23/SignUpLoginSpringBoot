package com.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SignupLoginDao;
import com.user.UserDto;
import com.userentity.UserEntity;


@Service
public class SignupLogiinServiceImpl implements SignupLogiinService {
	
	@Autowired
	SignupLoginDao signupLoginDao;
	
	public void doSignup(UserDto userDto) {
		
		UserEntity userEntity=new UserEntity();
		BeanUtils.copyProperties(userDto, userEntity);
		signupLoginDao.save(userEntity);	
	}


	@Override
	public UserDto doLogin(String username, String password) {
		
		UserEntity userEntity=signupLoginDao.findByUsernameAndPassword(username,password);
		
		if(userEntity!=null) {
			UserDto userDto=new UserDto();
			System.out.println(userEntity);
			BeanUtils.copyProperties(userEntity, userDto);
			return userDto;
		}
		else {
			return null;
		}
		
	}


	@Override
	public List<UserDto> fetchAllEmplyees() {
		
		List<UserDto> userDtoList=new ArrayList<>();
		
		List<UserEntity> userEntityList=signupLoginDao.findAll();
		
		for (UserEntity userEntity : userEntityList) {
			UserDto userDto=new UserDto();
			BeanUtils.copyProperties(userEntity, userDto);
			userDtoList.add(userDto);
		}
		
		return userDtoList;
	}


	@Override
	public UserDto fetchRecord(int uid) {
		Optional<UserEntity> optional=signupLoginDao.findById(uid);
		UserEntity userEntity=optional.get();
		
		if (userEntity!=null) {
			UserDto userDto=new UserDto();
			BeanUtils.copyProperties(userEntity, userDto);
			
			return userDto;
		}
		
		return null;
	}

}
