<%@page import="java.util.List"%>
<%@page import="tw.iii.topic.Agriculturalarea"%>
<%@page import="tw.iii.topic.data" %>
<%@page import="tw.iii.topic.gift" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel=stylesheet type="text/css" href="css/div.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<link >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% List<data> list =(List<data>)request.getAttribute("list");  
   List<gift> list1 = (List<gift>)request.getAttribute("list1");
   String op = request.getParameter("op");
%>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
		    <div class="navbar-header">
		        <a class="navbar-brand" href="#">菜鸟教程</a>
		    </div>
		    <div>
		        <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a href="#">iOS</a></li>
		            <li><a href="#">SVN</a></li>
		            <li class="dropdown">
		                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    Java <b class="caret"></b>
		                </a>
		                <ul class="dropdown-menu">
		                    <li><a href="#">jmeter</a></li>
		                    <li><a href="#">EJB</a></li>
		                    <li><a href="#">Jasper Report</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">分离的链接</a></li>
		                    <li class="divider"></li>
		                    <li><a href="#">另一个分离的链接</a></li>
		                </ul>
		            </li>
		        </ul>
	    </div>
		</div>
	</nav>



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