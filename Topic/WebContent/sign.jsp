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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom Theme files -->
<link href="Newtest1/css/style.css" rel='stylesheet' type='text/css' />
<link rel=stylesheet type="text/css" href="css/div.css">
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyA6gcpi9-EnxyDjXeWzkU9DHpyB5iyEUvY"></script>
<script src="Newtest1/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>

</head>
<body onload="codeAddress()">
<%  List<String> idNumber = null;
HttpSession sess = request.getSession();
if(sess.getAttribute("id") == null) {
    idNumber = new ArrayList<String>();
    sess.setAttribute("id", idNumber);
}
else {
	   idNumber = (List<String>) sess.getAttribute("id");
}%>


<jsp:include page="title.jsp"></jsp:include>

<form action="session2">
<c:forEach items="${list1}" var="list1">

<div class="single">
<div class="container">
		<div class="content span_1_of_2">				
					<div class="grid images_3_of_2">
						<img src="${list1.column1}" class="img-responsive" alt=""/>
					</div>
					
					<div class="desc span_3_of_2">
								<h3>${list1.name}</h3>
						<div class="desc">
			                <span class="brand">規格: <a href="#">${list1.specAndPrice} </a></span><br>
			                <span class="code">電話: ${list1.contactTel}</span><br>
			                <div class="padd-stock"> <div class="extra-wrap"> <span class="prod-stock-2">地址:${list1.produceOrg}</span></div></div>
			            <div class="price">
			        		<span class="text">價錢:$${list1.price }</span><br>
			                      </div>
			                  <div class="single-cart">
						        <div class="prod-row">
						          <div class="cart-top">
						            <div class="cart-top-padd">
						                <label></label>
						                <input type="text" name="quantity" size="2" value="1">
						                <input type="hidden" name="product_id" size="2" value="47">
						
						              </div>
									  <form action="checkout.html">
										<input type="submit" value="Add to Cart" class="button6">
									  </form>
						          </div>
			        			</div>
			        		</div>
			          </div>
				</div>
				
				<div class="clearfix"> </div>
				
					<div class="sap_tabs">	
					     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
							  <ul class="resp-tabs-list">
							  	  <li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab"><span>產品內容</span></li>
								  <div class="clear"></div>
							  </ul>				  	 
								<div class="resp-tabs-container">
								    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>產品內容</h2>
								    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="facts">
										  <ul class="tab_list">
										  	<li><a href="#">${list1.feature}</a></li>
										  	
										  </ul>           
								        </div>
								     </div>	     
								</div>
						      </div>
					 </div>
					 
					<div class="col-md-12">
							<div id="googleMap">11111111111111111111111111111111111</div>
					</div>				
					



			
</div>
</div>	
</c:forEach>
</form>	


	<div id="shopping">
		
		<a href="shopping"><img alt="購物車" src="images/shopping.png"></a>
	</div>
	<div id="number">
		<a href="shopping"><%=idNumber.size() %></a>
	</div>
	
	
<script type="text/javascript">
var Latitude=0;
var Longitude=0;
function codeAddress(){

	var add = document.getElementById("ConstructionADD");

	var geocoder = new google.maps.Geocoder();

	geocoder.geocode( { address: "台中火車站"}, function(results, status) {

		if (status == google.maps.GeocoderStatus.OK) {

			Longitude= results[0].geometry.location.lng();

			Latitude = results[0].geometry.location.lat();
			
			var mapProp = {
				center : new google.maps.LatLng(-33.91722, 151.23064),
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