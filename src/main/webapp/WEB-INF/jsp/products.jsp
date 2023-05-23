<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
th, td {
	border: 1px solid #444444;
}
</style>
</head>
<body>
	<h1>상품 추천 목록</h1>
	<label for="petSelect">반려동물 선택</label>
	<select id="petSelect">
		<c:forEach items="${pets}" var="pet">
			<option value="${pet.no}">${pet.name}</option>
		</c:forEach>
	</select>

	<ul>
		<li><a id="feed" href="#">사료</a></li>
		<li><a id="snack" href="#">간식</a></li>
		<li><a id="toy" href="#">장난감</a></li>
	</ul>
	
	<button id="default">기본순</button>
	<button id="price-asc">가격 낮은순</button>
	<button id="price-desc">가격 높은순</button>
	<table id="msg">
	</table>

	<script type="text/javascript">
		window.onload = function() {
			
			var petSelect = document.querySelector('#petSelect');
			var no = petSelect.value;
			var list = [];
			var msg = $('#msg')
			
			function print() {
				msg.html('<tr><td>사진</td><td>상품명</td><td>가격</td></tr>')
				$.each(list, function(index, item) {
					msg.append(`<tr><td><img src="${'${item.image}'}" style ="width:100px;height:100px">`
							+ `</td><td><a href="/products/${'${item.no}'}">${'${item.name}'}</a></td><td>${'${item.price}'}</td></tr>`)
				})
			}

			function handleSelectedOption() {
				no = petSelect.value;
				ajax(no, 'feed')
			}

			function ajax(no, category) {
				var options = {
					url : 'products',
					type : 'POST',
					data : JSON.stringify({
						petNo : no,
						category : category
					}),
					contentType : "application/json",
					success : function(data) {
						list = data.list;
						print()
					},
					error : function() {
						console.log('오류 발생')
					}
				}
				$.ajax(options)
			}
			document.querySelector('#feed').onclick = function(e) {
				ajax(no, 'feed')
				return false
			}
			document.querySelector('#snack').onclick = function(e) {
				ajax(no, 'snack')
				return false
			}
			document.querySelector('#toy').onclick = function(e) {
				ajax(no, 'toy')
				return false
			}
			
			document.querySelector('#default').onclick = function(e) {
				list.sort(function(a, b) {
					return a.no - b.no;
				})
				print();
			}
			
			document.querySelector('#price-asc').onclick = function(e) {
				list.sort(function(a, b) {
					return a.price - b.price;
				})
				print();
			}
			
			document.querySelector('#price-desc').onclick = function(e) {
				list.sort(function(a, b) {
					return b.price - a.price;
				})
				print();
			}

			petSelect.onchange = handleSelectedOption;

			handleSelectedOption();
			
		};
	</script>
</body>
</html>