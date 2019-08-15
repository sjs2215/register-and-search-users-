<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>등록된 원</title>
</head>
<body>


<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="circle" class="circleHome.CircleBean">
	<jsp:setProperty name="circle" property="*"/>  
</jsp:useBean>    

<%
double total;
total=circle.getRadius()*circle.getRadius()*Math.PI;

out.println("학생 객체의 주소값 = " + circle);
out.println("<h3> 등록된 원은  " + circle.printCircle() + total +" 입니다</h3>");
%>


</body>
</html>
