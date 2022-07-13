<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	b {
		font-size: 16px
	}
</style>
</head>
<body>
	<h2>설문조사</h2>
	
	<%
		String name = request.getParameter("name");
		
		String gender = request.getParameter("gender");
		
		out.print("성별 : ");
		if(gender.equals("male")) {
			out.println("<b>남자</b><br>");
		} else {
			out.print("<b>여자</b><br>");
		}
		
		String[] seasons = request.getParameterValues("season");
		out.println("당신이 좋아하는 계절은");
		for(String season : seasons) {
			int n = Integer.parseInt(season);
			
			switch(n) {
				case 1: 
					out.println("<b>봄 입니다.</b>");
					break;
				case 2: 
					out.println("<b>여름 입니다.</b>");
					break;
				case 3: 
					out.println("<b>가을 입니다.</b>");
					break;
				case 4: 
					out.println("<b>겨울 입니다.</b>");
					break;
			}
		}
	%>
</body>
</html>