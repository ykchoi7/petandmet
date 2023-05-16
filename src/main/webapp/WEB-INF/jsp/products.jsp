<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페트와 메트</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h1>상품 추천 목록</h1>
	<figure>
		<img alt="반려동물 사진" src="">
		<figcaption>반려동물 이름</figcaption>
	</figure>

	<ul>
		<li><a id="feed" href="#">사료</a></li>
		<li><a id="snack" href="#">간식</a></li>
		<li><a id="toy" href="#">장난감</a></li>
	</ul>

	<div id="msg"></div>

	<script type="text/javascript">
	
		window.onload = function() {
			function ajax(path) {
				var options = {
					url : 'products/' + path,
					success : function(data) {
						var msg = $('#msg')
						msg.html('')
						$.each(data.list, function(index, item) {
							msg.append('<p>' + item.no + ' ' + item.name + ' ' + item.price + ' ' + item.category + ' ' + item.image + ' ' + item.patella + ' ' + item.tooth + ' ' + item.skin + ' ' + item.scaling +  '</p>')
						})
					},
					error : function() {
					}
				}
				$.ajax(options)
			}
			document.querySelector('#feed').onclick = function(e) {
				ajax('feed')
				return false
			}
			document.querySelector('#snack').onclick = function(e) {
				ajax('snack')
				return false
			}
			document.querySelector('#toy').onclick = function(e) {
				ajax('toy')
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