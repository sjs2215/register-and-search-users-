<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>jQuery 테스트2</title>
<script src="js/jquery-3.2.1.min.js"></script>
<!-- 스타일 태그가 빠진 코드 jqtest2 -->
<script>
  $(document).ready(function() {
	  $("#b1").click(function() {
		  $("#b2").text($("p").text()); //$("p").text()->p태그의 있는 값을 가져와서 $("#b2").text($("p").text())->그걸 b2 대신에 바꿔줘
			  //즉, b2 텍스트를<p>~</p>의 물결 표시 부분의 텍스트로 변경해줘~ 버튼 변경과정: 버튼  -> 이미지 표시
		  // $("#b2").text($("#b1").text());//b2텍스트를 b1텍스트로 변경해줘~ 버튼 변경과정: 버튼 -> 버튼 레이블 변경 
	  });
	  $("#b2").click(function() {
		  $("#displayArea").html("<img src='some.jpg' border='0'/>");
	  });
  });
</script>
</head>
<body>
  <p>이미지 표시</p>
  <button id="b1">버튼 레이블 변경</button>
  <div id="displayArea">이미지</div>
  <button id="b2">버튼</button>
</body>
</html>