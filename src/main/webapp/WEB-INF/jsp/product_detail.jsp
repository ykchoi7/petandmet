<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
th, td {
	border: 1px solid #444444;
}
</style>
</head>
<body>
	<h1>상품 상세</h1>
	<img alt="${dto.name}" src="${dto.image}" width="150" height="150">
	<table>
		<tr>
			<td>상품명</td>
			<td>${dto.name}</td>
		</tr>
		<tr>
			<td>가격</td>
			<td>${dto.price}원</td>
		</tr>
		<tr>
			<td>평점</td>
			<td></td>
		</tr>
		<tr>
			<td>리뷰</td>
			<td></td>
		</tr>
	</table>
</body>
</html>