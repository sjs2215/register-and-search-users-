<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
로딩영역 내에 표시됩니다. 
<h4> 처리 결과 </h4>
<%

	request.setCharacterEncoding("UTF-8");
	String name =request.getParameter("name");
	String password =request.getParameter("pass");
	
	if("음두헌".equals(name)&&"1234".equals(password))
		out.println("관리자님 어서오세요~");
		
		else if("음두헌".equals(name))
		out.println("비번이 틀립니다ㅜ");
		
		else
		out.println("일반회원님 어서 오세요~");
		

%>
</body>
</html>
