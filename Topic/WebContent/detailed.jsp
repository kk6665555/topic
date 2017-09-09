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

   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/responsive.css"/>
    <link rel=stylesheet type="text/css" href="css/div.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="path/tobaguetteBox.min.css">
<link rel="stylesheet" href="css/gallery-clean.css">
<link rel="stylesheet" href="css/fluid-gallery.css">
<link rel="stylesheet" href="css/gallery-grid.css">
<link rel="stylesheet" href="css/thumbnail-gallery.css">
<link rel="stylesheet" href="assets/css/001.css"/>
  
<script src="path/to/js/baguetteBox.min.js"></script>
<script type="text/javascript">

function increase(){	
	var amount=document.getElementById("amount");
	amount.value++;
}

function decrease(){	
	var amount=document.getElementById("amount");
	if(amount.value>1){
	amount.value--;}
}
function check(){	
	var amount=document.getElementById("amount");
	if(amount.value<1){
	amount.value=1;}
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyA6gcpi9-EnxyDjXeWzkU9DHpyB5iyEUvY"></script>
</head>
        
<style type="text/css">
#shopping{
	position:fixed;
	width:80px;
	height:80px;
	right:15px;
	bottom:5px;
	
}
#shopping img{
	width:100%;
	height:100%;
}



    
.nav-tabs{
  background-color:#000000;
}

#myTab a{
	background-color:#CCCCCC !important	;
    color:#000000 !important;
}
.nav-tabs > li > a:hover{
  background-color: #303136;
    border: medium none;
    border-radius: 0;
    color:#333;
}


    #toparea{
        
         background-color: 	#FFFFFF;
         
    }
    
    #change{
        background-image: url( 'assets/plugins/parallax-slider/img/bg.jpg' );
    
    width: 100%;
    height: 100%;
 

    }
    
    #imgright{
         float: right;
         padding-right:10%;
    }
   
    
    #indexh3{
     border-bottom: 2px solid #72c02c;
     
         color: #585f69;
    margin: 0 0 -2px 0;
    padding-right: 10px;
    display: inline-block;
    text-shadow: 0 0 1px #f6f6f6;
    font-size: 24px;
    font-family: inherit;
    margin-top:5%;
    
}

#dropdownmenu{
      
    border-top: solid 2px #72c02c;
    border-bottom: solid 2px #687074;

    top: 100%;
    right: 10px;
    margin: 2px 0 0;
    list-style: none;
    background-color: #fff;
        background-clip: padding-box;
}
   
#navbar-header.a:link
        {
            color: 	#00AA00;
        }
        /* 已連結過 */
        a:visited
        {
            color: 	#444444;
        }
        /* 滑鼠移至連結 */
        a:hover
        {
            color: #00AA00;
        }
        /* 選擇的連結 */
        a:active
        {
            color:#00AA00;
        }   
        
#hr.style-four {
    
    border: 0;
    padding-top:0px;
    box-shadow: inset 0 5px 5px -5px rgba(0,0,0,0.6);
}

.loginbar li.devider {
    top: -1px;
    padding: 0;
    font-size: 8px;
    position: relative;
    margin: 0 6px 0 2px;
    font-family: Tahoma;
    border-right: solid 1px #bbb;
}
.loginbar li {
    display: inline;
    list-style: none;
    padding-bottom: 15px;
}
.li {
    color: #555;
    line-height: 1.6;
}
.loginbar i.icon-globe {
    color: #bbb;
    font-size: 13px;
    margin: 3px 3px 0 0;
    display: inline-block;
    width: 1.25em;
    text-align: center;
    font-family: FontAwesome;
    font-weight: normal;
    font-style: normal;
    text-decoration: inherit;
}
</style>        
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
	<!--=== 橫幅結束 ===-->
	
<!--=== 底下這邊開始是BODY ===-->
<%  List<String> idNumber = null;
HttpSession sess = request.getSession();
if(sess.getAttribute("id") == null) {
    idNumber = new ArrayList<String>();
    sess.setAttribute("id", idNumber);
}
else {
	   idNumber = (List<String>) sess.getAttribute("id");
}%>
<script >
    //baguetteBox.run('.tz-gallery');
</script>	
<form action="session2">
<c:forEach items="${list1}" var="list1">
<div class="one-two">
<img src="${list1.column1}"style="height:100%;width:100%;">
</div>

<div class="one-two one-two-second">
商品名稱:${list1.name}<br/>
規格:${list1.specAndPrice}<br/>
售價:${list1.price}<br/>
電話:${list1.contactTel}<br/>
地址:${list1.produceOrg}<br/>
數量:<br/>
<div style="padding-right:50%;">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group" >
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onClick="increase()">+</button>
                    </span>
                    <input type="text" id="amount" name="amount" class="form-control" style="text-align:center;" value="1" onChange="check()"/>
                    <input type="hidden" name="id" value="${list1.ID}">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button" onClick="decrease()">-</button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
</div>       
<button id="bim" type="submit" style="background-image:url(button1.png);width:175px;height:42px;"></button>
</div>

<div class="intro">
    <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#home" data-toggle="tab">
                    產品介紹
                </a>
            </li>
    </ul>
    <div id="myTab" class="tab-content">
        <div class="tab-pane fade in active" id="home">
        	<div  id="googleMap"></div>
        	<div  id="introtext">${list1.feature}</div>                   	
        </div>
    </div>
</div>
<input name="ConstructionADD" value="${list1.produceOrg}" type="text" id="ConstructionADD" size="50" maxlength="50" onchange="codeAddress()"/>
</c:forEach>
</form>
<div id="shopping">
		
		<a href="shopping"><img alt="購物車" src="images/shopping.png"></a>
	</div>
	<div id="number">
		<a href="shopping"><%=idNumber.size() %></a>
</div>	


<script >
var Latitude=0;
var Longitude=0;
function codeAddress(){

	var add = document.getElementById("ConstructionADD");

	var geocoder = new google.maps.Geocoder();

	geocoder.geocode( { address: add.value}, function(results, status) {

		if (status == google.maps.GeocoderStatus.OK) {

			Longitude= results[0].geometry.location.lng();

			Latitude = results[0].geometry.location.lat();
			
			var mapProp = {
				center : new google.maps.LatLng(Latitude,Longitude),
				zoom : 12,
				mapTypeId : google.maps.MapTypeId.ROADMAP    //HYBRID則變彩色地形
			};
			var map = new google.maps.Map(
						$("#googleMap")[0],
						mapProp);			
		} else {

			alert("Geocode was not successful for the following reason: " + status);

		}

	});

}





    
</script>	

</body>
</html>