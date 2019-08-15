<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta charset="UTF-8">
<title>학생정보 입력</title>
</head>
<body>
  <h2>학생 정보 입력 </h2>
	<form action="studentPro.jsp" method="post">
		이름 : <input type="text" name="name"><p>
		전번 : <input type="password" name="num"><p> <!-- 비밀번호 칠때 숫자가 보이지 않도록 타입을 password로 함 -->
		전공 : <select name="majors" multiple> <!-- multiple. 몇개 선택되던 선택된게 major라는 변수에 저장되서 넘어감 -->
		        <option>디지털미디어학</option>
		        <option>컴퓨터학</option>
		        <option>국어국문학</option>
		        <option>약학</option>
		      </select><p>
		취미 : <input type="checkbox" name="hobbies" value="ski">스키   
			 <input type="checkbox" name="hobbies" value="inline">인라인
			 <input type="checkbox" name="hobbies" value="reading">독서<p>
			 <!-- 같은 변수명 hobbies을 사용. 무엇을 선택하던 hobbies에 저장되서 넘어감 -->
		<input type="submit" value="보내기">
		</form>
</body>
</html>
