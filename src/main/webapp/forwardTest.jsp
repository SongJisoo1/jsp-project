<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Forward 방식으로 이동된 페이지</h1>
	
	<%
		String name = (String)request.getAttribute("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		out.print("나이 : " + age + " " + "이름 : " + name);
	%>
</body>
</html>