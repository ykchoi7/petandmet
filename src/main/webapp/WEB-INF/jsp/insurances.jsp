<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h1>보험 추천 목록</h1>
	<select id="petSelect">
		<c:forEach items="${petinfo}" var="pet">
		<option value="${pet.breed}">${pet.name}</option>
		</c:forEach>
	</select>
	
	<div id = "msg"></div>
	
	<script type="text/javascript">
	
	window.onload = function() {
		var petSelect = document.querySelector('#petSelect');
		var breed = petSelect.value;
		
		function handleSelectedOption() {
			breed = petSelect.value;
			ajax(breed)
			console.log(breed);
		}
		
		function ajax(breed) {
			var options = {
				url : 'insurances',
				type : 'POST', 
				data : {
					breed: breed
				},
				// contentType: "application/json",
				success : function(data) {
					var msg = $('#msg')
					msg.html('')
					$.each(data.li, function(index, item){
						msg.append('<h2>'+ item.name +'</h2>')
						msg.append('<p>' + item.company + '</p>')
						msg.append('<p> 대상 연령: ' + item.min_age + '개월 ~ ' + item.max_age + '개월 </p>')
						msg.append('<p>보장 비율: ' + item.coverage_ratio + '</p>')
						msg.append('<p>기간: ' + item.period + '개월 </p>')
						msg.append('<p>혜택: ' + item.benefits + '</p>')
						msg.append('<p>1년 최대 보장 금액: ' + item.annual_limit +'원 </p>')
						msg.append('<p>1일 최대 보장 금액: ' + item.daily_limit + '원 </p>')
						msg.append('<p>품종: ' + item.breed + '</p>')
						if (item.patella == true) {
							msg.append('<p> 슬개골 보장 여부:' + '보장' +'</p>')
						} else {
							msg.append('<p> 슬개골 보장 여부:' + '미보장' +'</p>')
						}
						if (item.tooth == true) {
							msg.append('<p> 구강질환 보장 여부:' + '보장' +'</p>')
						} else {
							msg.append('<p> 구강질환 보장 여부:' + '미보장' +'</p>')
						}
						if (item.skin == true) {
							msg.append('<p> 피부질환 보장 여부:' + '보장' +'</p>')
						} else {
							msg.append('<p> 피부질환 보장 여부:' + '미보장' +'</p>')
						}
						if (item.scaling == true) {
							msg.append('<p> 스케일링 보장 여부:' + '보장' +'</p>')
						} else {
							msg.append('<p> 스케일링 보장 여부:' + '미보장' +'</p>')
						}
						if (item.method == 'monthly') {
							msg.append('<p><b> 납입 금액 : 월 ' + item.fee +'</b></p>')
						} if (item.method == 'annually') {
							msg.append('<p><b> 납입 금액 : 연 ' + item.fee +'</b></p>')
						}
						msg.append('<button onclick="location.href=' + '"insurances"' +'> 상세보기' + '</button>')
					});
				},
				error : function() {
				}
			}
			$.ajax(options)
		}
		petSelect.onchange = handleSelectedOption;
		handleSelectedOption();
	};
	
	</script>

</body>
</html>