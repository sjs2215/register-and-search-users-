<%@ page language= "java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="advisor.*" %>
<%@ page import="java.util.ArrayList" %>
	
<%
request.setCharacterEncoding("utf-8");
String advisor_name = request.getParameter("advisor");

DatabaseBean manager = DatabaseBean.getInstance();
ArrayList<StudentBean> studentArray = manager.getStudents(advisor_name);
//arrayList<>  :<>는 제너릭 클래스(StudentBean형의 제너릭 클래스) - 담을 수있는 객체형을 명시해주는것. 
//즉, 배열인데 StudentBean의 studentArray를 담을꺼임
//for문 돌려서 일반배열에 값 넣는 것처럼 하면됨
for(int i=0; i<studentArray.size(); i++) {
	StudentBean student = studentArray.get(i);
	//out.println(student.getName() + "<br>");
	out.println(student.printStudent()+"<br>");  //이름뿐만 아니라 더 자세한 내용 출력하게 해줌
}
%>