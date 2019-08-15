<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>jQuery 테스트3</title>
<style type="text/css">
  div#result {
    width : 300px;
    height : 300px;
    border : 5px double #6699FF;
  }
</style>

<script src="js/jquery-3.2.1.min.js"></script>
<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  $("#result").load("jQTest3-2.txt", function(res,st,xhr) {
			  if(st=="success")
				  alert("로드성공!");
			  if(st=="error")
				  alert("실패: " + xhr.status + ": " + xhr.st);
		  });
	  });
  });
</script>
</head>
<body>
  <button id="b1">로드</button>
  <div id="result">로딩 영역</div>
</body>
</html>