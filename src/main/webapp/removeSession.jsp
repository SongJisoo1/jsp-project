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
	<%
		session.setAttribute("s_name1", "첫 번째 값");
		session.setAttribute("s_name2", "두 번재 값");
		session.setAttribute("s_name3", "세 번째 값");
		
		out.print("<h3> >> 세션값을 삭제하기 전 << </h3>");
		Enumeration<String> names;
		names = session.getAttributeNames();
		
		while(names.hasMoreElements()) {
			String key = names.nextElement();
 			String value = session.getAttribute(key).toString();
 	%>
 			
 			<p> <%= key %> : <%= value %> </p>
 			
 	<%
		}
		
		/* session.invalidate(); */
		
		out.print("<h3> >> 세션값을 삭제한 후 << </h3>");
		if(request.isRequestedSessionIdValid() == true) {
			out.print("세션 아이디가 유효합니다.<hr>");
		}else {
			out.print("세션 아이디가 유효하지 않습니다.<hr>");
		}
	%>
</body>
</html>