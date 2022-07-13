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
		String pwd = "jisoo97";
		String name = "송지수";
		
		if(id.equals(request.getParameter("userId")) && pwd.equals("userPw")) {
			session.setAttribute("loginUser", name);
			response.sendRedirect("loginMain.jsp");
		} else {
			response.sendRedirect("loginForm.jsp");
		}
	%>
</body>
</html>