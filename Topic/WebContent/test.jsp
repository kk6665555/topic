<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel=stylesheet type="text/css" href="css/Detailed.css">
<script src=js/Detailed.js></script>


<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">         
	        <ul class="loginbar pull-right">
	            <li><i class="icon-globe"></i><a>Languages <i class="icon-sort-up"></i></a>
	            <li class="devider">&nbsp;</li>
	            <li><a href="page_faq.html" class="login-btn">登出</a></li>  
	            <li class="devider">&nbsp;</li>
	            <li><a href="page_login.html" class="login-btn">登入</a></li>   
	        </ul>
	</div> 
	
	<nav id="toparea" role="navigation">
		<div class="container-fluid">
		    <div class="navbar-header">
		        <a href="index.html"><img id="logo-header" src="assets/img/logo1-default.png" alt="Logo" /></a>
		    </div>
		    <div>
		        <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a href="#" id="aclor" >首頁</a></li>
		            <li><a href="#">伴手禮專區</a></li>
		            <li class="dropdown">
		                
		             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    景點介紹<b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu" id="dropdownmenu">
		                    <li><a href="#">國家森林公園</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">退輔會休閒農場</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">農委會休閒景點</a></li>
		                </ul>
		            </li>
		            
		            
		             <li class="dropdown">
		                
		             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    住宿訂房<b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu" id="dropdownmenu">
		                    <li><a href="#">null</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">NULL</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">NULL</a></li>
		                </ul>
		            </li>
		            
		            
		             <li class="dropdown">
		                
		             <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    會員專區<b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu" id="dropdownmenu">
		                    <li><a href="#">會員登入</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">註冊會員</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">我的購物車</a></li>
		                </ul>
		            </li>
		        </ul>
	   	</div>
		</div>
	</nav>
	<hr class="style-one" />  



	<div class ="container">
		<div class="row">
		
			<div class="col-sm-12 steps">
			
					<div id="product"  class="flow_steps clearfix">
						  <ul id="test" class="clearfix steps">
						    <li id="one" class="active done first current"><a data-toggle="tab"  onclick="add()" href="#home">購物清單</a></li>
						    <li id="two" class=""><a data-toggle="tab"  onclick="add1()" href="#menu1">完成</a></li>
						    <li id="three" class="last"><a data-toggle="tab"   onclick="add2()" href="#menu2">確認</a></li>  
						  </ul>
					</div>
					
					<div class="tab-content">
						  <div id="home" class="tab-pane fade in active">
						      <table class="table table-bordered table-hover">
								  <thead>
								    <tr>
								      <th>全選</th>
								      <th>圖片</th>
								      <th>商品名稱</th>
								      <th>價格</th>
								      <th>數量</th>
								      <th>小計</th>
								      <th>庫存</th>
								      <th></th>
								    </tr>
								  </thead>
								  
								  <tbody>
								    <tr>
								      <th scope="row">1</th>
								      <td>1</td>
								      <td>2</td>
								      <td>3</td>
								      <td>1</td>
								      <td>2</td>
								      <td>3</td>
								      <td>刪除</td>
								    </tr> 
								  </tbody>
								  
								</table>
								<font size="4"><u>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</u></font><font>:總計</font>
						  
								<button id="button" class="btn btn-primary" onclick="nextpage()">下一頁</button>
						  </div>
						  
						  
						  
						  
						  
						  
						  <div id="menu1" class="tab-pane fade">
						      <form action="" class="form-horizontal">
						      	<div class="form-group">						      		
								      <label class="control-label" for="name">:姓名</label>
								      <div class="col-xs-3">
									      <input type="text" class="form-control" id="name">
									  </div> 
							    </div>
							    
							    <div class="form-group">					      		
								      <label class="control-label" for="phone">:電話</label>
								      <div class="col-xs-3">
									      <input type="text" class="form-control" id="phone">
									  </div> 
							    </div>
							    
							    <div class="form-group">					      		
								      <label class="control-label" for="homephone">:市話</label>
								      <div class="col-xs-3">
									      <input type="text" class="form-control" id="homephone">
									  </div>
						     	</div>
						     	
						     	<div class="form-group">					      		
								      <label class="control-label" for="mail">:郵件</label>
								      <div class="col-xs-5">
									      <input type="email" class="form-control" id="mail">
									  </div>
						     	</div>
						     	
						     	<div class="panel panel-success">
						     		<div class="panel-heading">
									    <h3 class="panel-title">配送方式</h3>
									</div>
									<div id="panel-body" class="panel-body">
										<h3>服務</h3>
										<div class="form-group">	
										    <div class="radio">
											    <label>
											      <input type="radio" name="optradio" >郵局
											    </label>
											 </div>
										</div>
										
										<div class="form-group">
										 <div class="radio">
										    <label>
										      <input type="radio" name="optradio" >黑貓(自宅)
										    </label>
										 </div>
										 </div>
										 
										 <div class="form-group">
										 <div class="radio">
										    <label>
										      <input type="radio" name="optradio" >新竹貨運
										    </label>
										 </div>
										 </div>
										
										
										 
										 <div class="form-group">
										 	
									     	     取貨方式:
									          <label><input type="radio" name="a">郵局</label>
									          <label><input type="radio" name="a">7-11</label>
									         
									        <!-- Single button -->
											<div class="btn-group">
											  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											    選擇 <span class="caret"></span>
											  </button>
											  <ul class="dropdown-menu">
											    <li><a></a></li>
											  </ul>
											</div>
											    
								 		 </div>
									</div>
						     	</div>
						     	
						     	<div class="panel panel-success">
						     	  <div class="panel-heading">付款方式</div>
								  <div class="panel-body row">
								    	<div class="btn-group col-sm-12">
								    		
												  <button id="btn" type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												    選擇 <span class="caret"></span>
												  </button>
												  
												  <ul id="dropdown-menu" class="dropdown-menu">
												    <li><a>郵局</a></li>
												    <li><a>ATM</a></li>
												    <li><a>信用卡</a></li>
												  </ul>
											 
										</div>
								  </div>
								</div>
						     	
						     	<div></div>
						     	
						      </form>
						      
						      
						  </div>
						  
						  
						  <div id="menu2" class="tab-pane fade">
						      <h3>Menu 2</h3>
						      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
						  </div>
					 </div>
			</div>
			
		</div>
	</div>
			 
		 
</body>
</html>