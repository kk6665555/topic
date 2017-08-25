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


	<div class ="container-fluid">
		<div class="row">
		
			<div id="product"  class="col-sm-12 steps">
			
					<div class="flow_steps clearfix">
						  <ul class="clearfix steps">
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
						  
								<button id="button">下一頁</button>
						  </div>
						  
						  
						  
						  
						  
						  
						  <div id="menu1" class="tab-pane fade">
						      <h3>Menu 1</h3>
						      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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