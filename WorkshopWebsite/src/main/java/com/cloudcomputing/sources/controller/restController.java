package com.cloudcomputing.sources.controller;

import static org.mockito.Mockito.RETURNS_DEEP_STUBS;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.cloudcomputing.sources.models.Home;
import com.cloudcomputing.sources.models.News;
import com.cloudcomputing.sources.models.User;
import com.cloudcomputing.sources.services.HomeServiceImpl;
import com.cloudcomputing.sources.services.NewsServiceImpl;
import com.cloudcomputing.sources.services.userServiceImpl;



@RestController
public class restController {
	
	String existingBucketName  = "hoatrigroup4computing";//bucket name
    String keyName             = "";
    String filePath            = "";
    
    //
    String originalName;

    AmazonS3 s3client;
    
	@Autowired 
	private userServiceImpl userService;
	
	@Autowired 
	private HomeServiceImpl homeService;
	
	@Autowired
	private NewsServiceImpl newsService;
	
	@PostMapping("login")
	public @ResponseBody int LoginPage(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User account = userService.findByUsernameAndPassword(username, password);
		
		if(account==null) {
			return 404;
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("admin", username);
		}
		return 200;
	}
	
	@PostMapping("loaddatahome")
	public @ResponseBody String LoadDataHome() {
		Home home = homeService.findData();
		if(home != null) {
			return home.getContent(); 
		}
		return "";
	}
	
	@PostMapping("updatehome")
	public  @ResponseBody int UpdataHome( HttpServletRequest request) {
		String content = request.getParameter("content");
		try {
			Home home = homeService.findData();
			home.setContent(content);
			homeService.saveHomeData(home);
			return 200;
		}catch(Exception ex) {
			return 403;
		}
	}
	
	@PostMapping("test")
	public @ResponseBody String UploadFiles() {
		return "cai dkmm";
	}

	@PostMapping("upload")
	public @ResponseBody List<String> UploadFile(HttpServletRequest request, @RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) throws IOException{
		BasicAWSCredentials creds = new BasicAWSCredentials("AKIAJVWVZREXBZNBOK7Q", "6ukcG3uT4ICnwn0DVjI+jdF2ZkdWJGRI+BzPl4px");
		s3client = AmazonS3Client.builder()
				    .withRegion("us-east-2")
				    .withCredentials(new AWSStaticCredentialsProvider(creds))
			    .build();

		try {
            System.out.println("Uploading a new object to S3 from a file\n");
            
            InputStream is = file.getInputStream();
            originalName = file.getOriginalFilename();
            checkKeyName();
            s3client.putObject(new PutObjectRequest(
            		existingBucketName, keyName, is, new ObjectMetadata()).withCannedAcl(CannedAccessControlList.PublicRead));
            
            //
            S3Object s3object = s3client.getObject(new GetObjectRequest(existingBucketName, keyName));
            List<String> result = new ArrayList<>();
			redirectAttributes.addAttribute("picUrl",s3object.getObjectContent().getHttpRequest().getURI().toString());
			result.add((String)s3object.getObjectContent().getHttpRequest().getURI().toString());
			System.out.println("Upload Success");
			System.out.println(result);
			result.add(originalName);
			return result;
            //
         } catch (AmazonServiceException ase) {
            System.out.println("Caught an AmazonServiceException, which " +
            		"means your request made it " +
                    "to Amazon S3, but was rejected with an error response" +
                    " for some reason.");
            System.out.println("Error Message:    " + ase.getMessage());
            System.out.println("HTTP Status Code: " + ase.getStatusCode());
            System.out.println("AWS Error Code:   " + ase.getErrorCode());
            System.out.println("Error Type:       " + ase.getErrorType());
            System.out.println("Request ID:       " + ase.getRequestId());
        } catch (AmazonClientException ace) {
            System.out.println("Caught an AmazonClientException, which " +
            		"means the client encountered " +
                    "an internal error while trying to " +
                    "communicate with S3, " +
                    "such as not being able to access the network.");
            System.out.println("Error Message: " + ace.getMessage());
        }catch(Exception e) {
        	e.printStackTrace();
        }
		return null;
		
	}
	private void checkKeyName() {
		keyName = UUID.randomUUID().toString()+Split(originalName);
//		try {
//			S3Object object = s3client.getObject(
//	                new GetObjectRequest(existingBucketName, keyName));
//			InputStream objectData = object.getObjectContent();
//			while(objectData!=null) {
//				keyName = UUID.randomUUID().toString()+Split(originalName);
//				object = s3client.getObject(
//		                new GetObjectRequest(existingBucketName, keyName));
//				objectData = object.getObjectContent();
//			}
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
	}
	private String Split(String s) {
		String more = s.substring(s.length()-4);
		return more;
	}
	
	@PostMapping("createnews")
	public @ResponseBody int CreateNews(HttpServletRequest request) {
		
		String title = request.getParameter("title");
		String sumary = request.getParameter("sumary");
		String content = request.getParameter("content");
		String image = request.getParameter("image");
		String file = request.getParameter("file");
		Date date = new Date();
		try {
			News news = new News(title, sumary, content, date, image, file);
			newsService.createNews(news);
			return 200;
		}catch(Exception e) {
			
		}
		return 403;
	}
	
	@PostMapping("/search-news")
    public @ResponseBody List<News> SearchNews(HttpServletRequest request) {
    	List<News> result = new ArrayList<>();
    	result = newsService.searchNews(request.getParameter("SearchValue"));
    	return result;
    }
	
	@PostMapping("/find-news")
    public @ResponseBody News FindNews(HttpServletRequest request) {
    	News result = new News();
    	int id = Integer.parseInt(request.getParameter("id"));
    	
    	result = newsService.findNews(id);
    	return result;
    }
	
	@PostMapping("/updatenews")
    public @ResponseBody int  UpdateNews(HttpServletRequest request) {
    	News result = new News();
    	int id = Integer.parseInt(request.getParameter("id"));
    	result = newsService.findNews(id);
    	if(result==null) {
    		return 500;
    	}else {
    		try {
	    		String newstitle = request.getParameter("title");
	    		String newssumary = request.getParameter("sumary");
	    		String newscontent = request.getParameter("content");
	    		String InamgeID = request.getParameter("image");
	    		String FileID = request.getParameter("file");
	    		result.setNews_title(newstitle);
	    		System.out.println(result.getNews_title());
	    		result.setNews_content(newscontent);
	    		result.setNews_sumary(newssumary);
	    		result.setNews_date(new Date());
	    		result.setNews_file(FileID);
	    		result.setNews_image(InamgeID);
	    		newsService.createNews(result);
	    		return 200;
    		}catch(Exception ex) {
    			return 500;
    		}
    		
    	}
    }
	
	@PostMapping("/delete-news")
    public @ResponseBody int  DeleteNew(HttpServletRequest request) {
    	News result = new News();
    	int id = Integer.parseInt(request.getParameter("id"));
    	result = newsService.findNews(id);
    	if(result==null) {
    		return 500;
    	}else {
    		try {
	    		newsService.deleteNews(id);
	    		return 200;
    		}catch(Exception ex) {
    			return 500;
    		}
    		
    	}
    }
	
	@PostMapping("/loadnewshome")
    public @ResponseBody List<News> getNewsHome(HttpServletRequest request) {
    	List<News> result = new ArrayList<>();
    	result = newsService.findSomeNews();
    	return result;
    }
	
	@PostMapping("/allnews")
    public @ResponseBody List<News> getAlllNews(HttpServletRequest request) {
    	List<News> result = new ArrayList<>();
    	result = newsService.findAllNews();
    	return result;
    }
	
}
