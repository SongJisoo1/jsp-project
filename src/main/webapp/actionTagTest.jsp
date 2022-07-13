<%@page import="java.net.URLEncoder"%>
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
	String check = request.getParameter("Logincheck");
	String id = request.getParameter("id");
	
	if(check.equals("user")) {
	%>
	
	<jsp:forward page="userPage.jsp">
		<jsp:param value='<%= URLEncoder.encode("사용자", "UTF-8") %>' name="userName" />
	</jsp:forward>
	
	<% 	} else { %> 
		<jsp:forward page="adminPage.jsp">
			<jsp:param value='<%= URLEncoder.encode("관리자", "UTF-8") %>' name="userName"/>
		</jsp:forward>
		
	<% } %>		

	
</body>
</html>