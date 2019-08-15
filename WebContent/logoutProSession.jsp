<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<!--  테이블 가져오쟈 먼저-->
<% 
String id = session.getAttribute("okid"); //값 가져오고
session.removeAttribute("okid");//테이블에서 레코드 지움 
%>

<%=id %>님 로그아웃 처리 완료 <!--표현식 쓸려고 13줄에서 값 가져움. 로그아웃만 하려면 14 줄만 치면됨.  -->

<!-- remove되면 loginProSession에서 이제 else문 실행되게 됨. 처음 실행되는 아이디이기 때문 -->
</body>
</html>
