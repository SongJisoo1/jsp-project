<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색 엔진 정보 페이지</h1>
	<p>검색 엔진을 선택하세요</p>
	<form action="link.jsp" method="get">
		<select name="link">
			<option value="http://www.naver.com">네이버</option>
			<option value="http://www.google.com">구글</option>
			<option value="http://www.daum.net">다음</option>
		</select>
		<button type="submit">이동</button>
	</form>
</body>
</html>