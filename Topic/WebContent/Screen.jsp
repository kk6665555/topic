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
<link rel=stylesheet type="text/css" href="div.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<link >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="check">
		<div class="row">
			<div class=".col-md-offset-3 btn btn-info">
				<select id="select" name='op'>
					<option value="臺北">臺北市</option>
					<option value="新北">新北市</option>
					<option value="桃園">桃園市</option>
					<option value="臺中">臺中市</option>
					<option value="臺南">臺南市</option>
					<option value="高雄">高雄市</option>
					<option value="基隆">基隆市</option>
					<option value="新竹">新竹市</option>
					<option value="苗栗">苗栗縣</option>
					<option value="彰化">彰化縣</option>
					<option value="南投">南投縣</option>
					<option value="雲林">雲林縣</option>
					<option value="嘉義">嘉義縣</option>
					<option value="屏東">屏東縣</option>
					<option value="宜蘭">宜蘭縣</option>
					<option value="花蓮">花蓮縣</option>
					<option value="臺東">臺東縣</option>
					<option value="澎湖">澎湖縣</option>
				</select>	
			</div>
			
			
			<% List<data> list =(List<data>)request.getAttribute("list");  
			   List<gift> list1 = (List<gift>)request.getAttribute("list1");
			%>
			<div class=".col.md-3">
			
				<input class="btn-primary" type="submit" value="查詢">	
			</div>
			
			
		</div>
		
		<c:forEach items="${list1}" var="list">
				<ul>
					<li>
						<div id="a1"><img id="img" src="${list.column1}"></div>
						
						
						<div id="a2">
							<h5>${list.name }</h5>
							<p>${list.feature}</p>
						</div>
				</ul>	
		</c:forEach>	
		
	</form>
	
	
	
	
</body>
</html>