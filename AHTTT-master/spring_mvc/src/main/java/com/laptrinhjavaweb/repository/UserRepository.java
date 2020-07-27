package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);

}
