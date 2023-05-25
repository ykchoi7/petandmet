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
	<h1>카드 추천</h1>
	<button type = "button" onclick = "location.href = 'insurances'";>보험 추천 </button>
	<button type = "button" onclick = "location.href = 'card'";>카드 추천 </button>
	<button type = "button" onclick = "location.href = 'saving'";>적금 추천</button> <br>
	<button id="annualfee">연회비낮은순</button>
	<button id="hospital">병원비할인율높은순</button>
	<button id="shopping">쇼핑몰할인율높은순</button>
	<button id="shopsave" >쇼핑몰적립율높은순</button>
	<div class="list_card">
					<table class="card_list">
						<colgroup>
							<col width="200" >
							<col width="500">
							<col width="500">
							<col width="*">
							<col width="*">
						</colgroup>
						<tbody id="cardList">
							<c:forEach items="${cards}" var="card">
								<tr class="item">
									<td class="image">
										<img src="${card.image}" style="width: 200px; height:120px;"/>
									</td>
									<td class="detail">
										<div class="title">
											${card.name}
										</div>
										<div class="price">
											연회비 ${card.annual_fee} 원
										</div>
										<div class="discount">
											병원 할인율 ${card.hospital_discount} % | 쇼핑몰 할인율 ${card.shopping_discount} %  <br> | 쇼핑몰 적립율 ${card.acc_rate} %
										</div>
									</td>
									<td class="benefits">
										<div class="good">
											${card.benefits}
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					
					</table>
	</div>		
	
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
	</script>
		
	
	
	<script type="text/javascript">
	let type = "";
	//연회비낮은순
	$('#annualfee').on('click',function(){
		$.ajax({
			type: 'GET',
			url: '/card/annual',
			dataType: 'json'
		}).done(function(result){
			console.log(result);
			$('#cardList').html('')
			$.each(result, function(index, r) {
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'>${'${r.name}'}</div>
						<div class='price'>${'${r.annual_fee}'}원</div>
						<div class='discount'>병원 할인율${'${r.hospital_discount}'} % | 쇼핑몰 할인율 ${'${r.shopping_discount}'} %  <br> | 쇼핑몰 적립율 ${'${r.acc_rate}'} %</div>
					</td>
					<td class='benefits'><div class='good'>${'${r.benefits}'}</div></td>
				</tr>`;
				$('#cardList').append(item_el);
			})
		}).fail(function(result){
			console.log('에러');
			console.log(result);
		});;
	});
	
	//병원할인율 높은순
	$('#hospital').on('click',function(){
		$.ajax({
			type: 'GET',
			url: '/card/hospital',
			dataType: 'json'
		}).done(function(result){
			console.log(result);
			$('#cardList').html('')
			$.each(result, function(index, r) {
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'>${'${r.name}'}</div>
						<div class='price'>${'${r.annual_fee}'}원</div>
						<div class='discount'>병원 할인율${'${r.hospital_discount}'} % | 쇼핑몰 할인율 ${'${r.shopping_discount}'} %  <br> | 쇼핑몰 적립율 ${'${r.acc_rate}'} %</div>
					</td>
					<td class='benefits'><div class='good'>${'${r.benefits}'}</div></td>
				</tr>`;
				$('#cardList').append(item_el);
			})
		}).fail(function(result){
			console.log('에러');
			console.log(result);
		});;
	});
	
	//쇼핑할인율높은순
	$('#shopping').on('click',function(){
		$.ajax({
			type: 'GET',
			url: '/card/shopping',
			dataType: 'json'
		}).done(function(result){
			console.log(result);
			$('#cardList').html('')
			$.each(result, function(index, r) {
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'>${'${r.name}'}</div>
						<div class='price'>${'${r.annual_fee}'}원</div>
						<div class='discount'>병원 할인율${'${r.hospital_discount}'} % | 쇼핑몰 할인율 ${'${r.shopping_discount}'} %  <br> | 쇼핑몰 적립율 ${'${r.acc_rate}'} %</div>
					</td>
					<td class='benefits'><div class='good'>${'${r.benefits}'}</div></td>
				</tr>`;
				$('#cardList').append(item_el);
			})
		}).fail(function(result){
			console.log('에러');
			console.log(result);
		});;
	});
	
	//쇼핑적립율높은순
	$('#shopsave').on('click',function(){
		$.ajax({
			type: 'GET',
			url: '/card/accrate',
			dataType: 'json'
		}).done(function(result){
			console.log(result);
			$('#cardList').html('')
			$.each(result, function(index, r) {
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'>${'${r.name}'}</div>
						<div class='price'>${'${r.annual_fee}'}원</div>
						<div class='discount'>병원 할인율${'${r.hospital_discount}'} % | 쇼핑몰 할인율 ${'${r.shopping_discount}'} %  <br> | 쇼핑몰 적립율 ${'${r.acc_rate}'} %</div>
					</td>
					<td class='benefits'><div class='good'>${'${r.benefits}'}</div></td>
				</tr>`;
				$('#cardList').append(item_el);
			})
		}).fail(function(result){
			console.log('에러');
			console.log(result);
		});;
	});
	
	</script> 


</body>
</html>