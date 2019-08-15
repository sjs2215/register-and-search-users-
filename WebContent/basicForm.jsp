<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>JSP BASIC FORM</title>
</head>
<body>
	<form action ="basicPro.jsp" method="post">
			반복 횟수: <input type="text" name="count"> <!-- count에 저장된 값이 basicPro로 넘어감 -->
			<input type="submit" value="전송">
	</form>
</body>
</html>
