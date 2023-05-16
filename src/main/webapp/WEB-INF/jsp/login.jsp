<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
</head>
<body>
	<h1>로그인</h1>
	<form method = "post" action="/login">
		<label>아이디 <input type="text" name="id"></label><br>
		<label>비밀번호 <input type="password" name="password"></label><br>
		<input type="submit" value="로그인">
	</form>
	<a href="signup">회원가입</a>
	<a href="#">아이디 찾기</a>
	<a href="#">비밀번호 찾기</a>
</body>
</html>