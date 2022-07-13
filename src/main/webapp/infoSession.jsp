<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션정보</h3>
	
	<%
		String id_str = session.getId();
		long lastTime = session.getLastAccessedTime();
		long createTime = session.getCreationTime();
		long time_used = (lastTime - createTime) / 6000;
		int inactive = session.getMaxInactiveInterval() / 60;
		boolean b_new = session.isNew();
	%>
	
	[1] 세션 ID는 [<%= session.getId() %>] 입니다. <br><br>
	[2] 당신이 웹사이트에 머문 시간은 <%= time_used %> 분 입니다. <br><br>
	[3] 세션의 유효시간은 <%= inactive %> 입니다. <br><br>
	[4] 세션이 새로 생성되었습니까 ? <br>
	
	<%
		if(b_new) 
			out.print("새로 생성되었습니다.");
		 else 
			out.print("새로 생성되지 않았습니다.");
		
	%>
</body>
</html>