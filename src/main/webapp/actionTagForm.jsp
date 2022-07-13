<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="actionTagTest.jsp" >
		아이디 : <input type="text" name="id">
		암 &nbsp; 호 : <input type="text" name="pw">
		<input type="radio" name="Logincheck" value="user" checked> 사용자
		<input type="radio" name="Logincheck" value="admin" checked> 관리자
		<button type="submit">로그인</button>
	</form>
</body>
</html>