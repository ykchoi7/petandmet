<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>

</head>
<body>
	<h1>보험 추천 목록</h1>
	<main class = "list" style>
		<div class="info">
			<c:forEach items="${ins}" var="i">
			
			<h2>${i.name}</h2>
			<p>${i.company}</p>
			<p>혜택: </p> ${i.benefits} <br>
			
			<button type="button" onclick="location.href='insurance'">상세보기</button>
			</c:forEach>
		</div>
	</main>
	<button type="button" onclick="location.href='insurance'">상세보기</button>
</body>
</html>