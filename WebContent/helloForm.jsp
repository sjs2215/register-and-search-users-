<%@ page import="java.net.URLEncoder"%>


<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>이름 입력</title>
</head>
<body>
<h2>입력된 이름을 서버에 전송합니다...</h2>
		<form action ="helloPro.jsp" method="get"> 
		<!-- post방식/get방식 -->
		<!-- get방식은 url에 어떤 변수가 입력되었는지 %인코딩으로 표시가 됨 
		ex)http://localhost:8080/StudyBasicJSP/helloPro.jsp?nm=%EC%9D%8C%EB%91%90%ED%97%8C 
		하지만 영어로 입력을 한다면 
		ex)http://localhost:8080/StudyBasicJSP/helloPro.jsp?nm=sooojin 
		이렇게 url이 표시가 됨-->
		<!-- post방식은 변수가 첨부파일로 넘어가게됨. url에 표시가 안됨. 노출이 안됨. -->
			<input type="text" name="nm"> 
			<input type="submit" value="send">
		</form>
		
</body>
</html>


