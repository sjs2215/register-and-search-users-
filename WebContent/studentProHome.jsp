<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8"); 
	String name = request.getParameter("name");
	String number = request.getParameter("age");
	String lives = request.getParameter("live");
	String sexs = request.getParameter("sex");
%>
<h2> 학생 정보 입력 결과 </h2>
    이름: <%= name%><p>
    나이: <%= number%><p>   
    성별: <%= sexs +"입니다."%><p>
    거주지: <%= lives %>
 
</body>
</html>
