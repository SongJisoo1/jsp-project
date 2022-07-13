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
		int number = Integer.parseInt(request.getParameter("number"));
	%>
	<h1>1 부터 <%= number %>까지 자연수 합 구하기</h1>
	
	<%
		int sum = 0;
		for(int i = 1; i < number + 1; i++) {
			sum += i;
			
			String str = (i == 1) ? i+"" : " + " + i;
			out.print(str);
		}
		
		out.print(" = "  + sum );
	%>
	
	
</body>
</html>