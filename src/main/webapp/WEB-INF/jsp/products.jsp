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
	<h1>상품 추천 목록</h1>
	<figure>
		<img alt="반려동물 사진" src="사진 경로">
		<figcaption>반려동물 이름</figcaption>
	</figure>

	<ul>
		<li><a id="feed" href="#">사료</a></li>
		<li><a id="snack" href="#">간식</a></li>
		<li><a id="toy" href="#">장난감</a></li>
	</ul>

	<div id="msg"></div>

	<script type="text/javascript">
		/* $(function() {
			$("#f1").submit(function(evt) {
				//핸들러메서드가 false 반환시 원래행동을 못하게 막는것
				// evt.preventDefault()
				sendNumber()
				return false
			})
		})
		function sendNumber() {
			var n1 = $("#n1").val() //입력한 숫자
			var options = {
				// url : "check_number.ng?no="+n1,
				url : "check_number_ng/" + n1,
				success : function(data) {
					$("#msg").html(data.msg)
				},
				error : function() {
				}
			}
			$.ajax(options)
		} */

		window.onload = function() {

			document.querySelector('#feed').onclick = function(e) {
				// e.preventDefault()
				console.log('feed')
				var options = {
					url : 'products/feed',
					success : function(data) {
						var dto = data.dto;
						console.log(dto)
						$('msg').html('')
						$('#msg').html(dto.no + ' ' + dto.name + ' ' + dto.price)
					},
					error : function() {}
				}
				$.ajax(options)
				return false
			}
			document.querySelector('#snack').onclick = function(e) {
				// e.preventDefault()
				console.log('snack')
				return false
			}
			document.querySelector('#toy').onclick = function(e) {
				// e.preventDefault()
				console.log('toy')
				return false
			}

			/* // Get 전송 코드를 작성하세요.
			document.querySelector("#btnSendGet").onclick = function() {
				let job = "insert";
				let pageNo = "10";
				let searchWord = "bank";
				// let params = `?job=${job}&pageNo=${pageNo}&searchWord=${searchWord}`;
				let params = "?job=" + job + "&pageNo=" + pageNo
						+ "&searchWord=" + searchWord;
				window.location.href = "/BE_WS_02/params" + params;
			};

			// Post 전송 코드를 작성하세요.
			document.querySelector("#btnSendPost").onclick = function() {
				let form = document.querySelector("form");
				form.action = "/BE_WS_02/params";
				form.method = "post";
				form.submit();
			}; */

		};
	</script>
</body>
</html>