<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String apppath = application.getContextPath();
		String realPath = application.getRealPath("application.jsp");
		
	%>
	
	웹 애플리케이션의 컨텍스트 패스명<br>
	<b> <%= apppath %> </b>
	<b> <%= realPath %>
</body>
</html>