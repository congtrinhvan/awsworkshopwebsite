package com.cloudcomputing.sources.dao;

import org.springframework.data.repository.CrudRepository;

import com.cloudcomputing.sources.models.News;

public interface NewsDAO extends CrudRepository<News, Integer> {

}
