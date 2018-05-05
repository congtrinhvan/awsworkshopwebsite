package com.cloudcomputing.sources.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="news")
public class News {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	@Column(name = "news_title")
	private String news_title;
	@Column(name = "news_sumary")
	private String news_sumary;
	@Column(name = "news_content")
	private String news_content;
	
	@Column(name = "news_date")
	private Date news_date;
	
	@Column(name = "news_image")
	private String news_image;
	@Column(name = "news_file")
	private String news_file;
	
	
	public News(String news_title, String news_sumary, String news_content,Date news_date, String news_image, String news_file) {
		super();
		this.news_title = news_title;
		this.news_sumary = news_sumary;
		this.news_content = news_content;
		this.news_date = news_date;
		this.news_image = news_image;
		this.news_file = news_file;
	}

	public News(int id, String news_title, String news_sumary, String news_content,Date news_date, String news_image,
			String news_file) {
		super();
		this.id = id;
		this.news_title = news_title;
		this.news_sumary = news_sumary;
		this.news_content = news_content;
		this.news_date = news_date;
		this.news_image = news_image;
		this.news_file = news_file;
	}
	
	public News() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_sumary() {
		return news_sumary;
	}
	public void setNews_sumary(String news_sumary) {
		this.news_sumary = news_sumary;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getNews_image() {
		return news_image;
	}
	public void setNews_image(String news_image) {
		this.news_image = news_image;
	}
	public String getNews_file() {
		return news_file;
	}
	public void setNews_file(String news_file) {
		this.news_file = news_file;
	}

	public Date getNews_date() {
		return news_date;
	}

	public void setNews_date(Date news_date) {
		this.news_date = news_date;
	}
	
	
}
