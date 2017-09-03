<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel=stylesheet type="text/css" href="css/Detailed.css">
<script src=js/Detailed.js></script>


<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js
"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>
	<jsp:include page="title.jsp"></jsp:include>

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
								   <c:forEach items="${membershopping}" var="idNumber">
										<c:forEach items="${idNumber.key}" var="list">
								    <tr>
								      <th scope="row"><div class="checkbox">
														  <label><input type="checkbox" value="" name="checkbox"></label>			  </div>
									  </th>
								      <td id="img"><img id="img1" src="${list.column1}"></img></td>
								      <td>${list.name}</td>
								      <td>${list.price}</td>
								      <td>${idNumber.value}</td>
								      <td>${list.price * idNumber.value}</td>
								      <td></td>
								      <td><a href="shopping?id2=${list.ID}">刪除</a></td>																	
								    </tr> 
								    	</c:forEach>
									</c:forEach>
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
								<div class="panel panel-danger">
								    <div class="panel-heading">
								        <h3 class="panel-title">付款資訊</h3>
								    </div>
								    <div class="panel-body">
								       <form class="form-horizontal">
								       	  <div class="form-group">
										    <label class="col-sm-2 control-label">付款狀態</label>
										    <div class="col-sm-10">
										      <p class="form-control-static">處理中</p>
										    </div>
										  </div>
										  
										  <div class="form-group">
										    <label class="col-sm-2 control-label">付款日期</label>
										    <div class="col-sm-10">
										      <p class="form-control-static">XXXX</p>
										    </div>
										  </div>
										  
										  <div class="form-group">
										    <label class="col-sm-2 control-label">付款金額</label>
										    <div class="col-sm-10">
										      <p class="form-control-static">XXXX</p>
										    </div>
										  </div>
										  
										  <div class="form-group">
										    <label class="col-sm-2 control-label">付款方式</label>
										    <div class="col-sm-10">
										      <p class="form-control-static">XXXX</p>
										    </div>
										  </div>
										  
										  <div class="form-group">
										    <label class="col-sm-2 control-label">運送方式</label>
										    <div class="col-sm-10">
										      <p class="form-control-static">XXXX</p>
										    </div>
										  </div>
								       
								       </form>
								    </div>
								</div>	
								
								<div class="panel panel-danger">
								    <div class="panel-heading">
								        <h3 class="panel-title">感謝購買!  下面為訂單明細</h3>
								    </div>
								    <div class="panel-body">
								       <table class="table table-bordered table-hover">
								  <thead>
								    <tr>
								      <th>商品名稱</th> 
								      <th>數量</th>
								      <th>小計</th>
								    </tr>
								  </thead>
								  
								  <tbody>
								    <tr>
								      <th scope="row">1</th>
								      <td>1</td>
								      <td>2</td>
								    </tr> 
								  </tbody>	  
								</table>     
								    </div>
								</div>		      

						  </div>
					 </div>
			</div>
			
		</div>
	</div>
			 
		 
</body>
</html>