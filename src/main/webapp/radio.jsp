<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="radio">
		<label for="gender">성별 : </label>
		<input type="radio" id="gender" name="gender" value="남자" checked> 남자
		<input type="radio" id="gender" name="gender" value="여자"> 여자 <br><br>
		<label for="chk_mail">메일 정보 수신 여부 : </label>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked> 수신
		<input type="radio" id="chk_mail" name="chk_mail" value="yes"> 거부 <br><br>
		<input type="checkbox" name="item" value="신발"> 신발
		<input type="checkbox" name="item" value="가방"> 가방
		<input type="checkbox" name="item" value="벨트"> 벨트
		<input type="checkbox" name="item" value="모자"> 모자 <br><br>
		
		<label for="content"> 간단한 가입인사를 적어주세요 </label> <br>
		<textarea id="content" name="content" rows="3" cols="35"></textarea> <br>
		<button type="submit">가입</button>
	</form>
</body>
</html>