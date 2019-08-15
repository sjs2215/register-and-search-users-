<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>JSP BASIC PRO</title>
</head>
<body> <!-- html기본으로 흐르되, java,jsp 코드 추가된 바디 -->

<!-- HTML 주석입니다. -->
<h2>JSP 기본 예제</h2> 
<%! //%! :선언문. 스크립트릿처럼 자바코드. 자바 코드로 변환될때 서블릿클래스에 멤버변수,메소드가 추가되는 것임. 
	// 자바 주석입니다. 
	//필드 정의. 변수 정의. 클래스의 멤버변수(지역변수가 아닌)로 들어감.모든데서 접근가능함
    String name = "음두헌";
    int a = 5;
    int b = 15;
    // 메소드 정의. 클래스 전체에 메소드가 하나 추가되는것. ex)init,service메소드와 동격의 메소드가 하나 추가되는것
    public int sum(){
 		  return a + b;
 	}
%>

<%-- JSP 주석입니다. JSP 표현식 --%>
a + b = <%=sum()%><p>
<% //<% :스크립트릿. 순수한 4줄의 자바코드.ex)여기에 변수선언한 경우: 자바코드로 변환되면 jsp 서비스 메소드 안으로 매핑 되므로 지역변수가 됨.
	String count = request.getParameter("count"); //사용자가 입력한 count 요청받은후  문자열로 받음 
	//request.setCharacterEncoding("UTF-8");->이렇게 인코딩 방식 사용하지 않음. 왜냐면 정수로 받으니까 필요없음.
	int cnt = Integer.parseInt(count);//다시 문자열을 정수로 바꿈. ex)실수형을 정수형으로 바꾸려면 Double.parseDouble사용. 
	//위와 같은 integer는 우리가 따로 객체 생성한게 아니라 클래스 선상에서 바로 쓸수 있음. 이런것을 클래스 메소드(스태틱 메소드)이라함. 
	Random generator = new Random();//random 클래스사용하기 위해 import속성 사용해야함. 
	//random 사용해서 난수 객체 generator를 생성 
  	for(int i=0; i<cnt; i++) { //for문을 표현식과 섞은 부분
%> 
 		<%= name%><p>  <!-- name은 멤버변수이므로 접근가능 -->
 		<!-- //%= :표현식. out객체 를 위한 출력 문장들을 안에 씀 -->
 		0과 9 사이의 난수: <%= generator.nextInt(10)%><p>
 		<!-- 다시 표현식이 들어감. 난수 발생된 숫자가 출력되게 하기 때문 -->
<%
	} //이건 표현식 아니고 스크립트릿이므로 <%열어서 for문 닫아줘야함
%>
<%--  29줄~44줄과 똑같은 결과이지만. 자바코드로 변경할 경우  
<% 
	String name2="박태정"; (얘는 지역변수다-name과 다른점 숙지하기) 
	String count = request.getParameter("count"); 
	int cnt = Integer.parseInt(count);
	Random generator = new Random();
  	for(int i=0; i<cnt; i++) { 
  		out.println(name);
  		out.write("0과 9사이의 난수:" + generator.nextInt(10)+ "<p>");
  		}		
%>
--%>
</body>
</html>