<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>소속직원 검색</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function() {
	$("#search").click(function(){
		  //입력된 사용자의 아이디와 비밀번호를 얻어냄
		  var query = {dept:$("#dept").val()};
		  $.ajax({
		     type: "post",
		     url: "advisorProHome.jsp",
		     data: query,
		     success: function(data){
		    	 $("#name").html(data);
		     },
			 error: function() {
				 alert("검색 실패");
			 }
		  });
	});
});
</script>
</head>
<body>
<b>부서를 입력하면 소속직원들이 표시됩니다~</b><p>
부서: <input id="dept" type="text" size=5><p>
<button id="search">검색</button>
<div id="name" style="overflow:auto; width:400px; height:300px;">
</div>
</body>
</html>