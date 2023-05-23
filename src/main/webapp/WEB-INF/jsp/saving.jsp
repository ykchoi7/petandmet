<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와메트</title>
</head>
<body>
	<h1>적금 목록</h1>
	<button type = "button" onclick = "location.href = 'insurances'";>보험 추천 </button>
	<button type = "button" onclick = "location.href = 'card'";>카드 추천 </button>
	<button type = "button" onclick = "location.href = 'saving'";>적금 추천</button>
	<h4>최대 금리순으로 정렬된 적금 목록입니다.</h4>
	<div class="list_saving">
				<table class="saving_list">
					<colgroup>
						<col width="300" >
						<col width="*">
						<col width="*">
						<col width="*">
					</colgroup>
					<tbody id="savingList">
						<c:forEach items="${savings}" var="saving">
								<tr class="item">
									<td class="image">
									<img src="${saving.image}" style="width: 200px; height:120px;"/>
									</td>
									<td class="detail">
										<div class="title">
											${saving.name} 
										</div>
										<div class="interest">
											최대 금리 ${saving.interest_rate+saving.prime_rate} %
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					
					</table>
				</div>		
	
</body>
</html>