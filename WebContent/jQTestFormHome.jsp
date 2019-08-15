<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>JQ HOMEWORK</title>
<style type="text/css">
  div#result{
    width : 200px;
    height : 200px;
    border : 5px double #6699FF;
  }
</style>

<script src="js/jquery-3.2.1.min.js"></script> 
<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  $.ajax({ 
				   type: "post", 
				   url: "loginProHome.jsp", 
				   data: {name:$("#t1").val(), pass:$("#t2").val()},
				   success: function(data) { 
					 $("#result").html(data);
				   }
		  });
	  });
  });
</script>
</head>
<body>
  이름: <input type="text" id="t1" size=5>
  비번: <input type="text" id="t2" size=5><p>
  <input id="b1" type="button" value="전송"/> 
  <div id="result">로딩 영역</div>
</body>
</html>
