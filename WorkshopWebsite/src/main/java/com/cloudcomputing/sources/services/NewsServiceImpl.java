package com.cloudcomputing.sources.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cloudcomputing.sources.dao.NewsDAO;
import com.cloudcomputing.sources.models.News;

@Service("newsService")
@Transactional
public class NewsServiceImpl implements NewsService {

	@PersistenceContext
	EntityManager entityManager;
	@Autowired
	private NewsDAO newsDAO;
	
	public void createNews(News news) {
		newsDAO.save(news);
	}
	
	public News findNews(int i) {
		return newsDAO.findById(i).get();
	}
	public List<News> searchNews(String searchContent){

		StoredProcedureQuery query = entityManager.createStoredProcedureQuery("SearchNews");
		query.registerStoredProcedureParameter(1, String.class, ParameterMode.IN);
		query.setParameter(1, searchContent);
		
		List<Object[]> storedProcedureResults = query.getResultList();
		
		List<News> lstAllNews=new ArrayList<>(storedProcedureResults.size());
		
		for(Object[] item : storedProcedureResults){
			lstAllNews.add(new News((int)item[0], (String)item[1],  (String) item[2], 
					(String) item[3], (Date) item[4], (String)item[5], (String)item[6]));
			System.out.println((String)item[1]);
		}
		return lstAllNews;

	}
	
	public void deleteNews(int id) {
		newsDAO.deleteById(id);
	}
	public List<News> findSomeNews(){
		List<News> lstAllNews=new ArrayList<>();
		
		List<News> lstTemp=(List<News>) newsDAO.findAll();
		
		for(int index=5;index>=0;index--) {
			lstAllNews.add(lstTemp.get(index));
		}
		return lstAllNews;
	}
	
	public List<News> findAllNews(){
		List<News> lstAllNews=new ArrayList<>();
		
		List<News> lstTemp=(List<News>) newsDAO.findAll();
		
		for(int index=lstTemp.size()-1;index>=0;index--) {
			lstAllNews.add(lstTemp.get(index));
		}
		return lstAllNews;
	}
}
