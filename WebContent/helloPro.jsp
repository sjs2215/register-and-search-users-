<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>환영 메시지</title>
</head>
<body>
<h3>나는 박수진입니다~!</h3>
<h2>서버가 처리한 이름입니다...</h2> 
<% 

//response객체 사용한코드
		request.setCharacterEncoding("UTF-8"); 
		String name = request.getParameter("nm");
		if(name.equals("음두헌"))
			out.println("<h3>Hello " + name + "~</h3>"); 
		else
			out.println("다시 입력하세요");
			//response.sendRedirect("helloForm.jsp");
%> 

</body>
</html>

