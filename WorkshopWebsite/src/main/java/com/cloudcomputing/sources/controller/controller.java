package com.cloudcomputing.sources.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.cloudcomputing.sources.services.NewsServiceImpl;
import com.cloudcomputing.sources.models.News;

@Controller
public class controller {

	@Autowired
	private NewsServiceImpl newsService;
	
	@GetMapping("/")
	public String index() {
		return "home";
	}
	@GetMapping("news")
	public String News() {
		return "news";
	}
	@GetMapping("dashboard")
	public String Dashboard() {
		return "dashboard";
	}
	@GetMapping("managernews")
	public String Managernews() {
		return "managernews";
	}
	@GetMapping("logout")
	public String Logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "home";
	}
	@GetMapping("detailnews")
	public String DetailNews(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		News news = newsService.findNews(id);
		request.setAttribute("id", id);
		request.setAttribute("newstitle", news.getNews_title());
		request.setAttribute("newscontent", news.getNews_content());
		request.setAttribute("newsimage", news.getNews_image());
		request.setAttribute("newsdate", news.getNews_date());
		return "detailnews";
	}
}
