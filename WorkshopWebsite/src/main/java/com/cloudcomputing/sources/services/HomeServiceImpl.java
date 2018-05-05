package com.cloudcomputing.sources.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cloudcomputing.sources.dao.HomeDAO;
import com.cloudcomputing.sources.models.Home;

@Service("homeService")
@Transactional
public class HomeServiceImpl implements HomeService {
	@Autowired
	private HomeDAO homeDAO;
	
	public Home findData() {
		return homeDAO.findById(1).get();
	}
	
	public void saveHomeData(Home home) {
		homeDAO.save(home);
	}
}
