<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와메트</title>
</head>
<body>
	<h1>카드 추천</h1>
	<button type = "button" onclick = "location.href = 'insurances'";>보험 추천 </button>
	<button type = "button" onclick = "location.href = 'card'";>카드 추천 </button>
	<button type = "button" onclick = "location.href = 'savings'";>적금 추천</button> <br>
	<button id="card">카드전체보기</button>
	<button id="annualfee">연회비낮은순</button>
	<button id="hospital">병원비할인율높은순</button>
	<button id="shopping">쇼핑몰할인율높은순</button>
	<button id="acc">쇼핑몰적립율높은순</button>
	<table border="1">
		<tr id="title">
			<th>카드이름</th>
			<th>카드회사</th>
			<th>연회비</th>
			<th>혜택</th>
			<th>동물병원 할인율</th>
			<th>애견용품 쇼핑몰 할인율</th>
			<th>쇼핑몰 적립율</th>
			<th>단체보험 가입 여부</th>
			<th>동물보호 공익기금 여부</th>
		</tr>
	
	<c:forEach var="card" items="${cards}">

			<tr class="item">
				<td>${card.name}</td>
				<td>${card.company}</td>
				<td>${card.annual_fee}</td>
				<td>${card.benefits}</td>
				<td>${card.hospital_dis}</td>
				<td>${card.shopping_dis}</td>
				<td>${card.acc_rate}</td>
				<td>${card.insurance_reg}</td>
				<td>${card.reg_fund}</td>
			</tr>
		</c:forEach>

	</table>
	<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>

		let type="";
	
	$('#annual_fee_desc').on('click', function(){
			$.ajax({
				type: 'GET',
				url: '/card/annual_fee/'+type,
				dataType: 'json'
			}).done(function(result){
				console.log(result);
				$('.item').remove();
				for(var r of result){
					var item_el= "<tr class='item'><td>"+r.id+"</td><td>"+r.name+"</td><td>"+r.price+"</td><td>"+r.orderCount+"</td><td>"+r.type+"</td></tr>";
					$('#title').after(item_el);
				}
			}).fail(function(result){
				console.log('에러');
				console.log(result);
			});;
		});
	</script> -->
</body>
</html>