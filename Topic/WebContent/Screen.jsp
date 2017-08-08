<%@page import="java.util.List"%>
<%@page import="tw.iii.topic.Agriculturalarea"%>
<%@page import="tw.iii.topic.data" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel=stylesheet type="text/css" href="div.css">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="check">
		<div class="ui-grid-a" id="view">
			<div class="ui-block-a">
				<select name='op'>
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
			
			
			<% List<data> list =(List<data>)request.getAttribute("list");  %>
			<div class="ui-block-b">
			
				<input type="submit" value="查詢">
				
			<c:forEach items="${list}" var="list">
					<c:out value="${list.name}"></c:out>
					<br>
			</c:forEach>	
				
			</div>
			
			
		</div>
		
		
	</form>
	
	
	
	
</body>
</html>