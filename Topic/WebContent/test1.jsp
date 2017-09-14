<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="TEST/css/style1.css" rel="stylesheet" type="text/css" media="all" />

<link rel=stylesheet type="text/css" href="css/Detailed.css">	
<script src=js/Detailed.js></script>

<link title="style3" rel="stylesheet" href="Newtest/style3.css" type="text/css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body>
	<jsp:include page="title.jsp"></jsp:include>
<div id="body">	
		<div class="ckeckout">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-offset-3">
				
						<div id="product"  class="flow_steps clearfix">
								  <ul id="test" class="clearfix steps">
									    <li id="one" class=""><a href="test.jsp">購物清單</a></li>
									    <li id="two" class="current_prev"><a data-toggle="tab" href="#">完成</a></li>
									    <li id="three" class="active done first current last"><a href="test1.jsp">確認</a></li>  
								  </ul>
						</div>
					
					</div>
				</div>
			
				
						<div class="form_content"> 
							    <fieldset>
							        <legend>付款資訊</legend>
							        
							        <c:forEach items="${list}" var="memberlist">
								        <div class="form-row">
								            <div class="field-label"><label for="field1">付款狀態</label>:</div>
								            <div class="field-widget">
								            	<c:choose>
								            	<c:when test="${memberlist.status==1}">
								            		處理中
								            	</c:when>	
						            			</c:choose>
								            </div>
								        </div>
								        
								        <div class="form-row">
								            <div class="field-label"><label for="field2">付款日期</label>:</div>
								            <div class="field-widget">${memberlist.date}</div>
								        </div>
								        
								        <div class="form-row">
								            <div class="field-label"><label for="field2">訂購金額</label>:</div>
								            <div class="field-widget">${memberlist.sum}</div>
								        </div>
								        <div class="form-row">
								            <div class="field-label"><label for="field2">付款方式</label>:</div>
								            <div class="field-widget">${memberlist.payment}</div>
								        </div>
								        
								        <div class="form-row">
								            <div class="field-label"><label for="field2">運送方式</label>:</div>
								            <div class="field-widget">${memberlist.pick}</div>
								        </div>
							        
							        </c:forEach>
							    </fieldset> 
							    <fieldset>
							        <legend class="optional">感謝購買!  下面為訂單明細</legend>
								      	 <table class="table table-bordered table-hover">
											  <thead>
											    <tr>
											      <th>商品名稱</th> 
											      <th>數量</th>
											      <th>小計</th>
											    </tr>
											  </thead>
											  
											  <tbody>
											     <c:forEach items="${list1}" var="list1">
													  	<c:forEach items="${list1.key}" var="list11">
													    <tr>
													      <th scope="row">${list11.name}</th>
													      <td>${list1.value}</td>
													      <td>${list11.price * list1.value}</td>
														<c:set var="sum1" value="${sum1+list11.price * list1.value}"></c:set>
														
													    </tr> 
													    </c:forEach> 
												  </c:forEach> 
											   <tbody>	   
											</table>  
							
							        
							    </fieldset> 
						 </div>	
				
				
				
			
			
			
			</div>
		</div>
</div>
</body>
</html>