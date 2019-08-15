<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- jqtest2  vs  jqtest3&jqtest3-2 비교해서 공부하기  -->
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
</style>   <!-- 스타일줌 -->

<script src="js/jquery-3.2.1.min.js"></script> <!-- jquery 쓸꺼니깐 이거 당연히 넣어주기 -->
<script>
//ajax 쓰는 예시! 
  $(document).ready(function() {//돔객체 완성되면 이 함수 실행해라~
	  $("#b1").click(function() {//버튼 클릭되면 이 함수 실행해라~
		  $.ajax({ 
				   type: "get", //보낼 변수의 것들이 첨부파일 형식으로 전달되는 형태 post
				   url: "jQTest3-2.jsp", //jqtest3과 jqtest3-2는 짝꿍
				   data: {name:"soojin", sid:"1234"},//{변수명:(키:밸류), 변수명:값 }형태로 데이터 보내는 것 - json 형태 (중간고사전에는 html데이터 형태였음)
				   //ajax는 json데이터 형태를 채택함. 
				   success: function(data) { //콜백함수임 (딴일 하고 있을테니 너 일 다 끝나면 결과 보내줘.기다리는동안 내 하던일 하고 있을때 요청했던 일 다 했다는 알람이 필요한데 그 알람 역활을 하는 것이 콜백함수) 
					   //=parameter인 data를 html로 바꾸어서 네모박스 디비젼 영역에 뿌려서 보여줘. 
					 $("#result").html(data);
				   }
		  });
	  });
  });
</script>
</head>
<body>
  <input id="b1" type="button" value="로드"/> <!-- 버튼임에 동시에 데이터 보내주는 역활까지 한번에 해줌 -->
<%-- <button id="b1">로드</button>: html5식의 버튼 만들기  --%>   
  <div id="result">로딩 영역</div>
</body>
</html>