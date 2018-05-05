package com.cloudcomputing.sources.dao;

import org.springframework.data.repository.CrudRepository;

import com.cloudcomputing.sources.models.Home;

public interface HomeDAO extends CrudRepository<Home, Integer> {

}
