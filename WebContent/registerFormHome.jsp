<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>원 등록</title>
</head>
<body>
<h2>원의 원점과 반지름 입력</h2>
<form action="registerProHome.jsp" method="post">
원점---> x:<input type="text" name="x" size=10>
y: <input type="text" name="y" size=10><p>
반지름---> radius: <input type="text" name="radius" size=10><p>
<input type="submit" value="등록">
</form>
</body>
</html>
