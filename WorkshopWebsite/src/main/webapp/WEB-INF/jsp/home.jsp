<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="static/assets/images/favicon.png">
    <title>Website Hội Thảo</title>
    <!-- Bootstrap Core CSS -->
    <link href="static/assets/node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- This page CSS -->
    <link rel="stylesheet"  href="static/jquery-confirm-v3.3.0/jquery-confirm-master/css/jquery-confirm.css">
    <!-- Custom CSS -->
    <link href="static/wrapkit/css/style.css" rel="stylesheet">
    <link href="static/wrapkit/css/index-landingpage/landing-page.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="">
	<!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
    	
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Header 1  -->
                <!-- ============================================================== -->
                <div class="header1 po-relative">
                    <div class="container">
                        <!-- Header 1 code -->
                        <nav class="navbar navbar-expand-lg h1-nav" style="padding: 0px;">
                          <a class="navbar-brand" href="#"><img src="static/assets/images/logos/Logo.png" alt="wrapkit" /></a>
                          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header1" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="ti-menu"></span>
                          </button>
                           
                          <div class="collapse navbar-collapse" id="header1">
                            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                              	<li class="nav-item active"><a class="nav-link" href="/" style="color: #2CDD9B;">Trang chủ</a></li>
                              	<li class="nav-item"><a class="nav-link" href="news">Tin tức</a></li>
                               	<li class="nav-item dropdown">
                                	<a class="nav-link dropdown-toggle" href="#" id="h1-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  	Chủ đề <i class="fa fa-angle-down m-l-5"></i>
                                	</a>
		                                <ul class="b-none dropdown-menu animated fadeInUp">
		                                    <li><a class="dropdown-item" href="#">Công nghệ thông tin</a></li>
		                                    <li><a class="dropdown-item" href="#">Y học</a></li>
		                                    <li><a class="dropdown-item" href="#">Thế giới</a></li>
		                                </ul>
                              	</li>
                              	<%
                              		if(session.getAttribute("admin")!=null){
                              	%>
                              	<li class="nav-item"><a class="nav-link" href="dashboard" target="_blank">Trang Admin</a></li>          
                             	<li class="nav-item"><a class="btn btn-outline-success" href="logout" >Đăng Xuất</a>
                             </li>
                             <%}else{ %>
                             <li class="nav-item"><a class="btn btn-outline-success" href="#" data-toggle="modal" data-target="#myModal">Đăng Nhập</a>
                             	<!-- The Modal -->
								<div class="modal fade" id="myModal">
								  <div class="modal-dialog modal-sm">
								    <div class="modal-content">

								      <!-- Modal Header -->
								      <div class="modal-header">
								        <h4 class="modal-title">Đăng nhập hệ thống</h4>
								        <button type="button" class="close" data-dismiss="modal">&times;</button>
								      </div>

								      <!-- Modal body -->
								      <div class="modal-body">
								        <form data-aos="fade-left" data-aos-duration="1200">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group m-t-15">
                                                            <input class="form-control" type="text" id="username" placeholder="Tên đăng nhập">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-group m-t-15">
                                                            <input class="form-control" type="password" id="password" placeholder="Mật khẩu">
                                                        </div>
                                                    </div>  
                                                </div>
                                            </form>
                                            <div class="col-lg-12" style="text-align: center;">
                                                <button type="submit" id="login" class="btn btn-danger-gradiant m-t-20 btn-arrow"><span> Đăng Nhập <i class="ti-arrow-right"></i></span></button>
                                            </div>
								      </div>
								    </div>
								  </div>
								</div>
								<!-- End modal -->
                             </li>
                             <%} %>
                            </ul>
                          </div>
                        </nav>
                        <!-- End Header 1 code -->
                    </div>
                </div>    
                <!-- ============================================================== -->
                <!-- End Header 1  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Static Slider 10  -->
                <!-- ============================================================== -->
                <div class="static-slider10" style="background-image:url(static/assets/images/static-slider/slider10/img4.jpg)">
                    <div class="container">
                        <!-- Row  -->
                        <div class="row justify-content-center ">
                            <!-- Column -->
                            <div class="col-md-6 align-self-center text-center" data-aos="fade-down" data-aos-duration="1200">
                                <!-- <span class="label label-rounded label-inverse">Creating Brands</span> -->
                                <h1 class="title" style="color: #000">TRANG WEB HỘI THẢO</h1>
                                <h6 class="subtitle op-8" style="color: #000">Chào mừng đến với Website Hội Thảo - Đến với chúng tôi các bạn có thể tham gia, tìm kiếm, học hỏi các vấn đề đang nổi trội trong cuộc sống từ đó có thể tìm được các giải pháp hữu ích trong cuộc sống! </h6>
                                <a class="btn btn-outline-light btn-rounded btn-md btn-arrow m-t-20" data-toggle="collapse" href=""><span style="color: #000">Bạn cần trợ giúp? <i class="ti-arrow-right"></i></span></a>
                            </div>
                            <!-- Column -->

                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Static Slider 10  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- text  -->
                <!-- ============================================================== -->
                <div class="spacer">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-md-7 text-center">
                                <h1 class="title font-bold">Trang Web Hội Thảo</h1>
                                <h6 class="subtitle" style="text-align: justify;" id="text-change"></h6>
                            </div>
                        </div>
                        <%
                        	if(session.getAttribute("admin")!=null){
                        %>
                        <div style="text-align: center; color: #fff;" >
                        	<div id="ckeditors">
                        		<textarea id="modifytext"></textarea>
                        	</div>
                            <a class="btn btn-info-gradiant btn-md btn-arrow m-t-20" id="modifypage"><span>Chỉnh sửa trang <i class="ti-arrow-right"></i></span></a>
                        </div>    
                        <div style="text-align: center; color: #fff;" id="actions">
                           <a class="btn btn-outline-light btn-rounded btn-md btn-arrow m-t-20" data-toggle="collapse" href="" style="background-color: #2E6FE9;" id="save"><span style="color: #000">Lưu <i class="ti-arrow-right"></i></span></a>

                           <a class="btn btn-outline-light btn-rounded btn-md btn-arrow m-t-20" data-toggle="collapse" href="" style="background-color: #EB2A3B;" id="cancel"><span style="color: #000">Hủy <i class="ti-arrow-right"></i></span></a>
                        </div>  
                        <%} %> 
                    </div>    
                </div>
                <!-- ============================================================== -->
                <!-- End text  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Feature 3 -->
                <!-- ============================================================== -->
                <div class="spacer ">
                    <div class="container feature30">
                        <div class="row">
                            <div class="col-lg-10"><img src="static/assets/images/features/feature30/img1.jpg" class="rounded img-responsive" alt="wrappixel" /></div>
                            <div class="col-lg-5 col-md-7 text-center wrap-feature30-box" data-aos="fade-left" data-aos-duration="1800" data-aos-easing="linear">
                                <div class="card card-shadow">
                                    <div class="card-body">
                                        <div class="p-20">
                                            <span class="label label-info label-rounded">news</span>
                                            <h3 class="title">Workshop Website</h3>
                                            <p>Bạn có thể tìm thấy nhiều chủ đề và giải pháp quan trọng cho gia đình bạn tại đây!</p>
                                            <a class="btn btn-info-gradiant btn-md btn-arrow m-t-20" href="#"><span>Thêm thông tin <i class="ti-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Feature 3 -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Portfolio 1  -->
                <!-- ============================================================== -->
                <div class="spacer">
                    <div class="container">
                        <!-- Row  -->
                        <div class="row justify-content-center">
                            <div class="col-md-7 text-center">
                                <h2 class="title">Tin tức nổi bật</h2>
                                <h6 class="subtitle">Liên hệ với chúng tôi để có những cập nhật thông tin mới nhất về các cuộc hội thảo.</h6>
                            </div>
                        </div>
                        <!-- Row  -->
                        <div class="row m-t-40" id="lstNews">
                            <!-- Column -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="card card-shadow" data-aos="flip-left" data-aos-duration="1200"> -->
<!--                                     <a href="#" class="img-ho"><img class="card-img-top" src="static/assets/images/portfolio/img1.jpg" alt="wrappixel kit" /></a> -->
<!--                                     <div class="card-body"> -->
<!--                                         <h5 class="font-medium m-b-0">Branding for Theme Designer</h5> -->
<!--                                         <p class="m-b-0 font-14">Digital Marketing</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                            <!-- Column -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="card card-shadow" data-aos="flip-up" data-aos-duration="1200"> -->
<!--                                     <a href="#" class="img-ho"><img class="card-img-top" src="static/assets/images/portfolio/img2.jpg" alt="wrappixel kit" /></a> -->
<!--                                     <div class="card-body"> -->
<!--                                         <h5 class="font-medium m-b-0">Button Designs Free</h5> -->
<!--                                         <p class="m-b-0 font-14">Search Engine</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                            <!-- Column -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="card card-shadow" data-aos="flip-right" data-aos-duration="1200"> -->
<!--                                     <a href="#" class="img-ho"><img class="card-img-top" src="static/assets/images/portfolio/img3.jpg" alt="wrappixel kit" /></a> -->
<!--                                     <div class="card-body"> -->
<!--                                         <h5 class="font-medium m-b-0">Branding & Co Agency</h5> -->
<!--                                         <p class="m-b-0 font-14">Admin templates</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                            <!-- Column -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="card card-shadow" data-aos="flip-left" data-aos-duration="1200"> -->
<!--                                     <a href="#" class="img-ho"><img class="card-img-top" src="static/assets/images/portfolio/img4.jpg" alt="wrappixel kit" /></a> -->
<!--                                     <div class="card-body"> -->
<!--                                         <h5 class="font-medium m-b-0">Zukandre Phoniex</h5> -->
<!--                                         <p class="m-b-0 font-14">Branding</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                            <!-- Column -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="card card-shadow" data-aos="flip-up" data-aos-duration="1200"> -->
<!--                                     <a href="#" class="img-ho"><img class="card-img-top" src="static/assets/images/portfolio/img5.jpg" alt="wrappixel kit" /></a> -->
<!--                                     <div class="card-body"> -->
<!--                                         <h5 class="font-medium m-b-0">Sionage Mokcup</h5> -->
<!--                                         <p class="m-b-0 font-14">Wll Mockup</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                            <!-- Column -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="card card-shadow" data-aos="flip-right" data-aos-duration="1200"> -->
<!--                                     <a href="#" class="img-ho"><img class="card-img-top" src="static/assets/images/portfolio/img6.jpg" alt="wrappixel kit" /></a> -->
<!--                                     <div class="card-body"> -->
<!--                                         <h5 class="font-medium m-b-0">Hard Cover Book Mock</h5> -->
<!--                                         <p class="m-b-0 font-14">Book Covers</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Portfolio 1  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Contact 1  -->
                <!-- ============================================================== -->
                <div class="contact1">
                    <div class="row">
                        <div class="col-md-12">
                        	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4799093863076!2d106.76982351384166!3d10.851056392270923!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175270ad28d48ab%3A0xa6c02de0a7c40d6c!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1525112102154"  width="100%" height="450" frameborder="0" style="border:0"></iframe>
                            
                        </div>
                        <div class="container">
                            <div class="spacer">
                                <div class="row m-0">
                                    <div class="col-lg-8">
                                        <div class="contact-box p-r-40">
                                            <h4 class="title">Liên hệ với chúng tôi</h4>
                                            <form data-aos="fade-left" data-aos-duration="1200">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="form-group m-t-15">
                                                            <input class="form-control" type="text" placeholder="Tên">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-group m-t-15">
                                                            <input class="form-control" type="text" placeholder="Email">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="form-group m-t-15">
                                                            <textarea class="form-control" rows="3" placeholder="Thắc mắc"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <button type="submit" class="btn btn-danger-gradiant m-t-20 btn-arrow"><span> Gửi liên hệ <i class="ti-arrow-right"></i></span></button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="detail-box p-40 bg-info" data-aos="fade-right" data-aos-duration="1200">
                                            <h2 class="text-white">WorkShop Website</h2>
                                            <p class="text-white m-t-30 op-8">01637 012 455
                                                <br> info@workshop.com</p>
                                            <p class="text-white op-8">Số 1 Võ Văn Ngân, Thủ Đức, Tp.HCM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Contact 1  -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Back to top -->
            <!-- ============================================================== -->
            <a class="bt-top btn btn-circle btn-lg btn-info" href="#top"><i class="ti-arrow-up"></i></a>
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <div class="footer4 b-t spacer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 m-b-30">
                        <h5 class="m-b-20">Địa chỉ</h5>
                        <p>Số 1 Võ Văn Ngân, Thủ Đức, Tp.HCM</p>
                    </div>
                    <div class="col-lg-3 col-md-6 m-b-30">
                        <h5 class="m-b-20">Điện thoại</h5>
                        <p>Văn phòng :  01637 012 455</p>
                    </div>
                    <div class="col-lg-3 col-md-6 m-b-30">
                        <h5 class="m-b-20">Email</h5>
                        <p>Office :  <a href="#" class="link">info@workshop.com</a></p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="m-b-20">Xã hội</h5>
                        <div class="round-social light">
                            <a href="#" class="link"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="link"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="link"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="link"><i class="fa fa-youtube-play"></i></a>
                            <a href="#" class="link"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="f4-bottom-bar">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="d-flex font-14">
                                <div class="m-t-10 m-b-10 copyright">All Rights Reserved by congtv and trungntm.</div>
                                <div class="links ml-auto m-t-10 m-b-10">
                                    <a href="#" class="p-10 p-l-0">Terms of Use</a>
                                    <a href="#" class="p-10">Legal Disclaimer</a>
                                    <a href="#" class="p-10">Privacy Policy</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->

	<script src="static/assets/node_modules/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="static/assets/node_modules/popper/dist/popper.min.js"></script>
    <script src="static/assets/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <!--Custom JavaScript -->
    <script type="text/javascript"
	src="static/jquery-confirm-v3.3.0/jquery-confirm-master/js/jquery-confirm.js"></script>
    <script src="static/wrapkit/js/custom.min.js"></script>
    <script src="static/ckeditor/ckeditor.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <script type="text/javascript">

        $(document).ready(function(){
        	LoadData();
        	LoadNewsData();
        	
        	
        	$("#actions").hide();
        	$("#ckeditors").hide();
        	$("#modifypage").show();
        	$("#modifypage").click(function(){
        		$("#modifypage").hide();
        		$("#actions").show();
        		$("#ckeditors").show();
        		CKEDITOR.instances.modifytext.setData($("#text-change").html());
        	});
        	
        	$("#login").click(function(){
        		Login();
        	})
        	
        	$("#save").click(function(){
        		Save();
        	})
        	$("#cancel").click(function(){
        		window.location.href="/"
        	})
        	CKEDITOR.replace('modifytext');
        });
        
        function Login(){
        	var username = $.trim($("#username").val());
        	var password = $.trim($("#password").val());
        	if(username==""||password==""){
        		$.alert("Vui lòng điền đầy đủ thông tin!")
        	}else{
        		$.ajax({
					url: "login",
	                method: "POST",
	                data:{
	                	username : username,
	                	password : password
                }, success: function(result) {
	                	if(result==200){
	                    	window.location.href="/"
	                	}
	                	else
	                		$.alert("Tên đăng nhập hoặc mật khẩu không đúng!");
                	}
				})
        	}
        }
        
        function LoadData(){
        	console.log("test");
        	$.ajax({
					url: "loaddatahome",
	                method: "POST",
	                data:{ },
	                success: function(result) {
	                	console.log(result);
	                	if(result!=null){
	                    	$("#text-change").html(result);
	                	}
	                	else
	                		$("#text-change").html("Chào mừng đến với Website Hội Thảo - Đến với chúng tôi các bạn có thể tham gia, tìm kiếm, học hỏi các vấn đề đang nổi trội trong cuộc sống từ đó có thể tìm được các giải pháp hữu ích trong cuộc sống!");
                	}
				})
        }
        
        function Save(){
        	var content = $.trim(CKEDITOR.instances.modifytext.getData());
        	
        	if(content==""){
        		$.alert("Nội dung này không được bỏ trống!")
        	}else{
        		$.confirm({
        			title: 'Xác nhận!',
                    content: 'Bạn chắc chắn muốn thay đổi thông tin này?',
                    buttons : {
                    	Confirm : function(){
                    		$.ajax({
            					url: "updatehome",
            	                method: "POST",
            	                data:{
            	                	content : content
                            }, success: function(result) {
            	                	if(result==200){
            	                    	$.alert("Lưu thành công!");
            	                    	window.location.href="/";
            	                	}
            	                	else
            	                		$.alert("Đã có lỗi sảy ra, vui lòng thử lại sau!");
                            	}
            				})
                    	},
                        Cancel : function(){
                        	window.location.href="/"
                        }
                    }
        		
        		});
        	}
        }
        
        function LoadNewsData(){
    		$("#lstNews").html("");
    		$.ajax({
    				url : 'loadnewshome',
    				type : 'POST',
    				data : {},
    				success:function(result){
    					var data="";
    					for(var i=0; i<result.length; i++){
    						data += "<div class='col-md-4'>"+
    		                        	"<div class='card card-shadow' data-aos='flip-left' data-aos-duration='1200'>"+
    			                            "<a href='detailnews?id="+result[i].id+"' class='img-ho'><img class='card-img-top' src='"+result[i].news_image+"' alt='wrappixel kit' /></a>"+
    			                            "<div class='card-body'>"+
    			                               "<h5 class='font-medium m-b-0'>"+result[i].news_title+"</h5>"+
    			                                "<p class='m-b-0 font-14'>"+result[i].news_sumary+"</p>"+
    			                            "</div>"+
    		                            "</div>"+
    	                            "</div>"
                        }
                        $("#lstNews").html(data);
    				}
    		})
    	}
        
    </script>
</body>
</html>