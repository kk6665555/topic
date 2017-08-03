<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link rel=stylesheet type="text/css" href="div.css">
<link >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="check">
		<div class="ui-grid-a" id="view">
			<div class="ui-block-a">
				<select name='op'>
					<option value="1">臺北市</option>
					<option value="2">新北市</option>
					<option value="3">桃園市</option>
					<option value="4">臺中市</option>
					<option value="5">臺南市</option>
					<option value="6">高雄市</option>
					<option value="7">基隆市</option>
					<option value="8">新竹市</option>
					<option value="9">苗栗縣</option>
					<option value="10">彰化縣</option>
					<option value="11">南投縣</option>
					<option value="12">雲林縣</option>
					<option value="13">嘉義縣</option>
					<option value="14">屏東縣</option>
					<option value="15">宜蘭縣</option>
					<option value="16">花蓮縣</option>
					<option value="17">臺東縣</option>
					<option value="18">澎湖縣</option>
				</select>
			
				
			</div>
			
			<div class="ui-block-b">
			
				<input type="submit" value="查詢">
				
			</div>
			
			
		</div>
	</form>
</body>
</html>