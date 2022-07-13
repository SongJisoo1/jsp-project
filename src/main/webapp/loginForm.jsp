<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="testLogin.jsp">
		<label for="userId">아이디 : </label>
		<input type="text" id="userId" name="userId">
		<br>
		<label for="userPW">암 &nbsp; 호 : </label>
		<input type="password" id="userPw" name="userPw">
		<br>
		<button type="submit">로그인</button>
	</form>
</body>
</html>