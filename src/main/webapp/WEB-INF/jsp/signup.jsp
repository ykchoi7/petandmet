<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
</head>
<body>
	<h1>회원가입</h1>
	<form>
		<label>아이디 <input type="text" name="id"></label><br>
		<label>비밀번호 <input type="password" name="password"></label><br>
		<label>비밀번호 확인<input type="password" name="password2"></label>
		<label>이름 <input type="text" name="name"></label>
		<label>전화번호 <input type="tel" name="phone"></label><br>
		<label>생년월일 <input type="date" name="date"></label><br>
		<label>주소 <input type="text" name="address"></label><br>
		<input type="submit" value="회원가입">
	</form>
</body>
</html>