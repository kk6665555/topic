<%@page import="tw.iii.topic.gift"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="TEST/css/style.css" rel="stylesheet" type="text/css" media="all" />	

<script src="js/Screen.js" language="JavaScript"></script>
<link href="css/div.css" rel="stylesheet" type="text/css">



</head>
<%
	String [] a ={"銅鑼杭菊美人茶","喜諾巴萊-小米醇酒","凍橄梅梅","水里真梅"
			,"四珍凍頂茶禮盒","茶鄉米香","半路店梅子味噌禮盒","信義風情禮盒組"};
	String op = request.getParameter("op");
	
	List<String> idNumber = null;
	   HttpSession sess = request.getSession();
	   if(sess.getAttribute("id") == null) {
	       idNumber = new ArrayList<String>();
	       sess.setAttribute("id", idNumber);
	   }
	   else {
		   idNumber = (List<String>) sess.getAttribute("id");
	   }
%>


<body>
<jsp:include page="title.jsp"></jsp:include>
					<div id="myCarousel" class="carousel slide" coverflow>
			<!-- 轮播（Carousel）指标 -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
								</ol>   
								<!-- 轮播（Carousel）项目 -->
								<div class="carousel-inner">
									<div class="item active">
										<img id="img" src="https://ezgo.coa.gov.tw/Uploads/opendata/BuyItem/APPLY_D/20151027110331.jpg" alt="First slide">
										<div class="carousel-caption"></div>
									</div>
									<div class="item">
										<img id="img"  src="https://ezgo.coa.gov.tw/Uploads/opendata/BuyItem/APPLY_D/20151027094908.jpg" alt="Second slide">
										<div class="carousel-caption"></div>
									</div>
									<div class="item">
										<img id="img"  src="https://ezgo.coa.gov.tw/Uploads/opendata/BuyItem/APPLY_D/20151026172056.jpg" alt="Third slide">
										<div class="carousel-caption"></div>
									</div>
								</div>
								<!-- 轮播（Carousel）导航 -->
								<a class="carousel-control left" href="#myCarousel" 
								   data-slide="prev"><span id="span" class="glyphicon glyphicon-chevron-left"></span></a>
								<a class="carousel-control right" href="#myCarousel" 
								   data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
	
		
					
		<div class="content">
			<div class="container">
				<div class="content-top">
				<h5></h5>
				<div class="text-right">
					<form id="form" action="check">
					<select class="btn btn-danger" id="op" name='op' onchange="sub()">
						<option SELECTED ><%=op==null?"選擇":op%></option>
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
					</form>
				</div>	
				<c:choose>
				<c:when test="${list1 != null}">
				
					<div id="Default1" class="content-top1">
					<c:forEach items="${list1}" var="list1" varStatus="status">
					
							<div class="col-md-3 col-md2">
								<div class="col-md1 simpleCart_shelfItem">
									<div id="testid">
										<a href="detailed?id=${list1.ID}">
												<img style="height:170px" class="img-responsive" src="${list1.column1}" alt="" />
										</a>
									</div>	
										<h3 id="h3"><a href="single.html"></a>${list1.name }</h3>
										<div class="price">
												<h5 class="item_price">$${list1.price}</h5>
												<a href="session?id=${list1.ID}&op=<%=op %>" class="item_add">Add To Cart</a>
												<div class="clearfix"> </div>
										</div>
								</div>
							</div>	
							<c:if test="${status.count/4==0 }"><div class="clearfix"></div></c:if>	
					</c:forEach>	
					</div>	
				
				</c:when>
				
				<c:when test="${empty list1 }">
						<div id="Default" class="content-top1">
							<c:forEach var="i" begin="0" end="3">
								<div class="col-md-3 col-md2">
									<div class="col-md1 simpleCart_shelfItem">
										<a href="single.html">
											<img class="img-responsive" src="TEST/images/a${i}.jpg" alt="" />
										</a>
										<h3><a href="single.html">a[0]</a></h3>
										<div class="price">
												<h5 class="item_price">$${i}</h5>
												<a href="#" class="item_add">Add To Cart</a>
												<div class="clearfix"> </div>
										</div>
									</div>
								</div>	
							</c:forEach>
						<div class="clearfix"> </div>		
						</div>	
						
						<div id="Default1" class="content-top1">
							<c:forEach var="i" begin="4" end="7">
								<div class="col-md-3 col-md2">
									<div class="col-md1 simpleCart_shelfItem">
										<a href="single.html">
											<img class="img-responsive" src="TEST/images/a${i}.jpg" alt="" />
										</a>
										<h3><a href="single.html">a[1]</a></h3>
										<div class="price">
												<h5 class="item_price">$${i}</h5>
												<a href="#" class="item_add">Add To Cart</a>
												<div class="clearfix"> </div>
										</div>
									</div>
								</div>	
							</c:forEach>
							<div class="clearfix"> </div>			
						</div>	
						
				</c:when>		
				</c:choose>
				</div>
			</div>
		</div>
		
		
		
		<div id="shopping">
		
		<a href="shopping"><img alt="購物車" src="images/shopping.png"></a>
		</div>
		<div id="number">
			<a href="shopping"><%=idNumber.size() %></a>
		</div>	
</body>
</html>