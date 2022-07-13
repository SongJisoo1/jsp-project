<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Application영역에 저장된 정보 </h1>
	<p> <%= application.getAttribute("name") %> </p>
	<p> <%= application.getAttribute("id") %> </p>
	<br>
	<hr>
	<h1> Session영역에 저장된 정보</h1>
	
	<%
		Enumeration<String> em = session.getAttributeNames();
	
		while(em.hasMoreElements()) {
			String key = em.nextElement();
			String value = (String)session.getAttribute(key);
			
	%>
	
			<p> <%= key %> : <%= value %> </p>
	<% 
		}
		
	%>
	
</body>
</html>