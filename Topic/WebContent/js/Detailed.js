	function add(){
		$("li[class*='current']").removeClass("current_prev current"); 
		$("#one").addClass("current");
	}
	function add1(){
		$("li[class*='current']").removeClass("current_prev current"); 
		$("#one").addClass("current_prev");
		$("#two").addClass("current");
		
	}
	function add2(){
		$("li[class*='current']").removeClass("current_prev current"); 
		$("#two").addClass("current_prev");
		$("#three").addClass("current");
	}
	
	function nextpage(){
		$("li[class*='current']").removeClass("current_prev current");
		$("#one").addClass("current_prev");
		$("#two").addClass("current");
		$("#test a[href='#menu1']").tab('show');
	}
	function nextpage2(){
		$("li[class*='current']").removeClass("current_prev current");
		$("#two").addClass("current_prev");
		$("#three").addClass("current");
		$("#test a[href='#menu2']").tab('show');
	}
	
	
	function ons(){
		 $(".dropdown-menu li a").click(function(){
		      $("#btn").text($(this).text());
		      $("#btn").val($(this).text());
		   });
	  }
	