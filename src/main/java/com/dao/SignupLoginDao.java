package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.userentity.UserEntity;

public interface SignupLoginDao extends JpaRepository<UserEntity, Integer>{

	UserEntity findByUsernameAndPassword(String username, String password);
	
}
