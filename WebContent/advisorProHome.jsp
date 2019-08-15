<%@ page contentType = "text/html; charset=utf-8" %>
<%@page import="java.sql.*"%>
<%  
	request.setCharacterEncoding("utf-8");  
 	String department = request.getParameter("dept");  
	
	Class.forName("com.mysql.jdbc.Driver"); 
	String url = "jdbc:mysql://localhost:3306/empldb"; 
	String user = "root";
	String password = "1234";
	Connection conn = DriverManager.getConnection(url, user, password); 

	String sql = "select distinct employee.name from employee,job,assignment ";
	sql = sql + "where job.jobid=assignment.jobid and assignment.emplid=employee.emplid and job.dept=?";
	

	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, department);
	ResultSet rs = pstmt.executeQuery();  
%>
<html>
<head><title>지도학생‹</title></head>
<body>
<%= department %> 소속직원
<hr>
<%
	String Name=null;
	while(rs.next()) {   
	  Name = rs.getString(1);
%>
<h5><%= Name %></h5>  
<%
	} 
	rs.close(); 
	pstmt.close();
	conn.close();
%>
</body>
</html>
