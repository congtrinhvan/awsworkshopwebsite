package com.cloudcomputing.sources.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cloudcomputing.sources.dao.UserDAO;
import com.cloudcomputing.sources.models.User;

@Service("userService")
@Transactional
public class userServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public User findByUsernameAndPassword(String username, String password) {
		return userDAO.findByUsernameAndPassword(username, password);
	}
}
