package com.cloudcomputing.sources.services;


import com.cloudcomputing.sources.models.User;

public interface UserService {
	public User findByUsernameAndPassword(String username, String password);
}
