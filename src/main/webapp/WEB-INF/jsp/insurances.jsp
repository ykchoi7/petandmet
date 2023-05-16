<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#f1").submit(function(evt)){
			//핸들러메서드가 false 반화시 원래 행동을 못하게 막음 
			//evt.preventDefault()
			sendInsurance()
			return false
		}
	})
	
	function sendInsurance() {
		
	}
</script>

</head>
<body>
	<h1>보험 추천 목록</h1>
	<main class = "list" style>
		<div class="info">
			<forEach items="${insli}" var="i">
			
			<h2>${i.name}</h2>
			<p>${i.company}</p>
			<p>혜택: </p> ${i.benefits} <br>
			
			<button type="button" onclick="location.href='insurance'">상세보기</button>
			
		</div>
	</main>
	<button type="button" onclick="location.href='insurance'">상세보기</button>
</body>
</html>