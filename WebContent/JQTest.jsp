<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>jQuery 테스트</title>

<style type="text/css">
  div#displayArea {
    width : 200px;
    height : 200px;
    border : 5px double #6699FF;
  }
</style>

<script src="js/jquery-3.2.1.min.js"></script> 
<script> ////윗 줄에서 라이브러리를 먼저  실행한 후에jqery 라이브러리를 사용하는 자바스크립트 코드가 들어가야함
//jqery쓰면 javascript만 쓰는 것보다 훨씬 간결하게 일 처리 할 수 있음. 그래서 사용하는 것 
  $(document).ready(function() { //=document가 ready면=dom,document 객체가 완성이 됬다면
	  //->jquery 함수 생성
	  $("#mybtn").click(function() {//=밑 함수를 실행시켜라 
		  $("#displayArea").html("<img src='some.jpg' border='0'/>");
	  //#뭐시기로 id에 접근 함. 
	  //html(html코드가 들어감) 
	  //img 태그->>지정된 jpg 파일을 톰캣한테 보내달라고 요청. 톰캣이 받고 jsp가 아니므로 컨테이너는 할일이 없고 고민할 필요 없이 바로 클라이언트한테 보내줌. 마지막 순서로 사진 파일을 보내서 #displayArea에 뿌려줌
	  });
  });
</script>
</head>
<body>
<%
	boolean comment = true;
	if(comment) {
		String str = "jQuery를 테스트하는 페이지입니다.";
		out.write("<h5>" + str + "</h5>");
	}
%>
  <div id="displayArea">이곳의 내용이 변경</div>
  <button id="mybtn">표시</button>
</body>
</html>