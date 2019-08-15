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
<h2>서버가 처리한 결과입니다...</h2>

<%
	request.setCharacterEncoding("UTF-8"); 
	String firstname = request.getParameter("sname");
	String lastname = request.getParameter("ename");
	
	if("박".equals(firstname)&&"수진".equals(lastname)){
	out.println("<h3>Hello " + firstname + lastname + "~</h3>");
	}
	else
		out.println("다시 입력하세요");
%>
</body>
</html>
