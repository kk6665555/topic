<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="java.util.List"%>
<%@page import="tw.iii.topic.Agriculturalarea"%>
<%@page import="tw.iii.topic.data" %>
<%@page import="tw.iii.topic.gift" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- http://www.runoob.com/css/css-rwd-viewport.html initial-scale:縮放比例 width:指定寬度 /> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>


<body>
	<div class="top">
	    <div class="container">         
	        <ul class="loginbar pull-right">
	            <li><i class="icon-globe"></i><a>Languages <i class="icon-sort-up"></i></a>
	                <ul class="nav-list">
	                    <li class="active"><a href="#">English</a> <i class="icon-ok"></i></li>
	                    <li><a href="#">Spanish</a></li>
	                    <li><a href="#">Russian</a></li>
	                    <li><a href="#">German</a></li>
	                </ul>
	            </li>   
	            <li class="devider">&nbsp;</li>
	            <li><a href="page_faq.html" class="login-btn">Help</a></li>  
	            <li class="devider">&nbsp;</li>
	            <li><a href="page_login.html" class="login-btn">Login</a></li>   
	        </ul>
	    </div>      
	</div>
	
	
	<div class="header">               
	    <div class="container"> 
	        <!-- Logo -->       
	        <div class="logo">                                             
	            <a href="index.jsp"><img id="logo-header" src="assets/img/logo1-default.png" alt="Logo" /></a>
	        </div><!-- /logo -->        
	                                    
	        <!-- Menu -->       
	        <div class="navbar">                                
	            <div class="navbar-inner">                                  
	                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </a><!-- /nav-collapse -->                                  
	                <div class="nav-collapse collapse">                                     
	                    <ul class="nav top-2">
	                        <li class="active">
	                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">首頁    </a>
	                           
	                        </li>
	                        <li>
	                            <a href="index.jsp">農家樂伴手禮 </a>
	                           
	                                                   
	                        </li>
	                        <li>
            
	                            <a href="" class="dropdown-toggle" data-toggle="dropdown">景點介紹
	                                <b class="caret"></b>                            
	                            </a>
	                            <ul class="dropdown-menu">
	                                <li><a href="page_services.html">基隆</a></li>
	                                <li><a href="page_pricing.html">台北</a></li>
	                                <li><a href="page_coming_soon.html">桃園</a></li>
	                                <li><a href="page_faq.html">新竹</a></li>
	                                <li><a href="page_search.html">苗栗</a></li>
	                                <li><a href="page_gallery.html">台中</a></li>
	                                <li><a href="page_404.html">彰化</a></li>
	                                 <li><a href="page_column_right.html">南投</a></li>
	                                <li><a href="page_clients.html">雲林</a></li>
	                                <li><a href="page_privacy.html">嘉義</a></li>
	                                <li><a href="page_terms.html">台南</a></li>
	                                <li><a href="page_column_left.html">高雄</a></li>
	                                <li><a href="page_column_right.html">屏東</a></li>
	                                 <li><a href="page_column_right.html">台東</a></li>
	                                  <li><a href="page_column_right.html">花蓮</a></li>
	                                   <li><a href="page_column_right.html">宜蘭</a></li>
	                            </ul>
	                            <b class="caret-out"></b>                        
	                        </li>
	                        <li>
	                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">住宿訂房
	                                <b class="caret"></b>                            
	                            </a>
	                            <ul class="dropdown-menu">
	                                <li><a href="portfolio.html">特色民宿</a></li>
	                                <li><a href="portfolio_item.html">星級旅行</a></li>
	                                <li><a href="portfolio_2columns.html">精選推薦</a></li>
	                      
	                            </ul>
	                            <b class="caret-out"></b>                        
	                        </li>
	                        <li>
	                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">部落客推薦
	                                <b class="caret"></b>                            
	                            </a>
	                            <ul class="dropdown-menu">
	                                <li><a href="blog.html">近期推薦</a></li>
	                                <li><a href="blog_item.html">搶購活動</a></li>
	                                <li><a href="blog_left_sidebar.html">null</a></li>
	                                <li><a href="blog_item_left_sidebar.html">null</a></li>
	                            </ul>
	                            <b class="caret-out"></b>                        
	                        </li>
	                        <li>
	                            
	                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">會員專區
	                                <b class="caret"></b>                            
	                            </a>
	                            <ul class="dropdown-menu">
	                                    <li><a href="page_login.html">會員登入</a></li>
	                                <li><a href="page_registration.html">成為會員</a></li>
	                                <li><a href="page_contact1.html">公司地址</a></li>
	                                 <li><a href="page_about.html">關於我們</a></li>
	                               
	                            </ul>
	                            <b class="caret-out"></b>                        
	                        </li>
	                        <li><a class="search"><i class="icon-search search-btn"></i></a></li>                               
	                    </ul>
	                    <div class="search-open">
	                        <div class="input-append">
	                            <form >
	                                <input type="text" class="span3" placeholder="Search" />
	                                <button type="submit" class="btn-u">Go</button>
	                            </form>
	                        </div>
	                    </div>
	                </div><!-- /nav-collapse -->                                
	            </div><!-- /navbar-inner -->
	        </div><!-- /navbar -->                          
	    </div><!-- /container -->               
	</div>
	
	
	<form id="form" action="check">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3">
					<select class="btn btn-danger" name='op' onchange="submit()">
						<option SELECTED>縣市</option>
						<optgroup label="北部:"></optgroup>
							<option value="台北">臺北市</option>
							<option value="宜蘭">宜蘭縣</option>
								
						<optgroup label="中部:"></optgroup>
							<option value="苗栗">苗栗縣</option>	
							<option value="台中">臺中市</option>
							<option value="彰化">彰化縣</option>
							<option value="南投">南投縣</option>
							<option value="雲林">雲林縣</option>
							
						<optgroup label="南部:"></optgroup>
							<option value="嘉義">嘉義縣</option>
							<option value="台南">臺南市</option>
							<option value="高雄">高雄市</option>
							<option value="屏東">屏東縣</option>
							
						<optgroup label="東部:"></optgroup>
							<option value="花蓮">花蓮縣</option>
							<option value="台東">臺東縣</option>
	
					
					</select>	
				</div>	
			</div>		
	
			<div class="row">
				<c:forEach items="${list1}" var="list">
					<div id="gift" class="col-sm-3">	
						
						<div id="a1" >
								<img id="img" src="${list.column1}">
								<div class="overlay">
							         <a class="info" href="#">加入購物車</a>
							    </div>
						</div>
										
						<div id="a2">
								<h5>${list.name }</h5>
								<p>${list.feature}</p>
						</div>			
					</div>
				</c:forEach>
			</div>	
				
		</div>
	</form>
	
	
	
	<script>
		function submit(){
			document.getelementbyid("form").submit();
			}
	
	
	</script>
	
	
	



</body>
</html>