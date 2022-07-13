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
	String id = "jisoo97";
	String pw = "jisoo97";
	String name = "songjisoo";
	
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))) {

	response.sendRedirect("Main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
	
	} else {
		
		response.sendRedirect("isLoginForm.jsp");
	}
%>
</body>
</html>