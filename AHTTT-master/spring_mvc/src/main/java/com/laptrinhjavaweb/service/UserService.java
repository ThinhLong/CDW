package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.User;
import com.laptrinhjavaweb.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository UserRP;

	public boolean saveUser(User user) {
		return UserRP.save(user) != null;
	}

	public List<User> findAll() {
		return UserRP.findAll();
	}

	public User findId(long id) {
		return UserRP.findOne(id);
	}

	
}
