package com.nagarro.HRManager.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nagarro.HRManager.model.User;


public interface UserRepository extends JpaRepository<User, Long>{
	User findByUsername(String username);
}
