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
			<c:forEach items="${petins}" var="i">
			<h2>${i.name}</h2>
			<p>${i.company}</p>
			<p>대상 연령: ${i.min_age}개월 ~ ${i.max_age}개</p>
			<p>보장 비율: ${i.coverage_ratio}</p>
			<p>기간: ${i.period}개</p>
			<p>혜택: ${i.benefits} </p>
			<p>1년 최대 보장 금액: ${i.annual_limit}원 </p>
			<p>1일 최대 보장 금액: ${i.daily_limit}원 </p>
			<p>품종: ${i.breed}</p>
			
			<p>슬개골 보장 여부:
				<c:if test="${i.patella}">
					보장
				</c:if>
				<c:if test="${not i.patella}">
					미보장
				</c:if>
			</p>
			<p>구강질환 보장 여부:
				<c:if test="${i.tooth}">
					보장
				</c:if>
				<c:if test="${not i.tooth}">
					미보장
				</c:if>
			</p>
			<p>피부질환 보장 여부: 
				<c:if test="${i.skin}">
					보장
				</c:if>
				<c:if test="${not i.skin}">
					미보장
				</c:if>
			</p>
			<p>스케일링 여부: 
				<c:if test="${i.scaling}">
					보장
				</c:if>
				<c:if test="${not i.scaling}">
					미보장
				</c:if>
			</p>
			
			<p><b>납입 금액: 
				<c:if test="${i.method eq 'monthly'}">
					월 ${i.fee}
				</c:if>
				<c:if test="${i.method eq 'annually'}">
					연 ${i.fee}
				</c:if>
			</b></p>
			
			<button type="button" onclick="location.href='insurance'">상세보기</button>
			</c:forEach>
			<br>
			
		</div>
	</main>

</body>
</html>