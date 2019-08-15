<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Title Here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
    String id = (String) session.getAttribute("id");
    boolean login = id == null ? false : true;
    if (login) {
%>
아이디 "<%= id %>"으로 로그인 한 상태
<%
    } else {
%>
로그인하지 않은 상태
<%
    }
%>
</body>
</html>