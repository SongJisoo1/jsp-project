<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	컨텍스트 패스 : <%= request.getContextPath() %> <br>
	요청방식     : <%= request.getMethod() %> <br>
	URL        : <%= request.getRequestURL() %> <br>
	URI        : <%= request.getRequestURI() %> <br>
	서버의 이름   : <%= request.getServerName() %> <br>
	프로토콜      : <%= request.getProtocol() %> 
</body>
</html>