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
	//한글 안깨지게: request 내장 객체 (톰캣에서 주어지는)한테 utf-8인코딩해달라고 전달
	//넘어온 변수들 안의 값을 한글이 들어있을경우 utf-8로 해석함. 
	String name = request.getParameter("name");
	String number = request.getParameter("num");
	String[] majors = request.getParameterValues("majors");
	//major에 들어간 값들이 선택된게 한개 이상일수 있으므로 , 배열로 받음. 한개이상으로 값이 넘어오는 경우에는 getParameterValues를 사용
	String[] hobbies = request.getParameterValues("hobbies");
	//hobbies에 들어간 값들이 선택된게 한개 이상일수 있으므로 , 배열로 받음
%>
<h2> 학생 정보 입력 결과 </h2>
    학번 :  <%= name%><p>
    핸드폰: <%= number%><p>   <!-- 11줄~25줄까지를 전체를 스크립트릿으로 바꾸어라~ 시험문제.(html부분)표현식 부분을 자바코드로 바꾸면 됨. -->
    전공 :
<%
  if(majors == null)
    out.println("전공 없음");
  else {
    for(int i=0; i<majors.length; i++) {
      out.println(majors[i] + " ");
    }
  }
%>
  <p>취미 :
<%
  if(hobbies == null) //null인 경우도 알아봐야함
  	out.println("취미 없음");
  else {
  	for(int i=0; i<hobbies.length; i++) {
    	out.println(hobbies[i] + " ");
    }
  }
%>

</body>
</html>
