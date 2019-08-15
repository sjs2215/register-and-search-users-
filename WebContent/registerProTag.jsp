<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>가입 처리</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8");%>
<!-- action 태그 중 하나인 useBean을 이용하는 방법 -->
<jsp:useBean id="student" class="advisor.StudentBean">  <!-- StudentBean student = new StudentBean(); 와 똑같은 문장  -->
	<jsp:setProperty name="student" property="*"/>  
	<!-- 14줄~28줄 과 같음. setter 프로퍼티 이용해서 student 객체를 필드값을 채우는데 채우는 property 속성("*")은 전달된 5개를 가지고 채워라~ -->
</jsp:useBean>     <!-- ->사용하려면 자바빈의 필드명과 form 파일이 전달할 변수명이 정확히 일치해야함. -->
<%
out.println("학생 객체의 주소값 = " + student);
out.println("<h3>학생 정보는 " + student.printStudent() + "입니다</h3>");
%>

<%-- include 테스트 --%>
<%--
<jsp:include page="included.jsp"/>
--%>

<%-- forward 테스트  --%>
<%--
<jsp:forward page="forwarded.jsp">
  <jsp:param name="prof" value="음두헌"/>
</jsp:forward>
--%>

<%-- redirect 테스트 --%>
<%--
<%  response.sendRedirect("forwarded.jsp");%>
--%>

</body>
</html>