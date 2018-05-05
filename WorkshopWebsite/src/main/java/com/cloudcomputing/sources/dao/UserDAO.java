package com.cloudcomputing.sources.dao;

import org.springframework.data.repository.CrudRepository;

import com.cloudcomputing.sources.models.User;

public interface UserDAO extends CrudRepository<User, Integer> {
	public User findByUsernameAndPassword(String username, String password);
}

