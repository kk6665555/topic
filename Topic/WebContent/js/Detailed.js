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