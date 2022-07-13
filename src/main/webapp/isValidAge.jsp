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
		int age = Integer.parseInt(request.getParameter("age"));
	
		if(age > 19) {
			request.setAttribute("name", "송지수");
			RequestDispatcher dispatch = request.getRequestDispatcher("forwardTest.jsp");
			dispatch.forward(request, response);
		} else { %>
			<script type="text/javascript">
				alert("19세 미만이므로 입장 불가능");
				history.go(-1)
			</script>
		  <%
		}
	%>
</body>
</html>