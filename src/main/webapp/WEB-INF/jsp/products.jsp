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
	th,td{
		border: 1px solid #444444;
	}
</style>
</head>
<body>
	<h1>상품 추천 목록</h1>
	<select id="petSelect">
		<c:forEach items="${dtos}" var="pet">
		<option value="${pet.no}">${pet.name}</option>
		</c:forEach>
	</select>
	
	
	<%-- <table>
        <tr>
            <td rowspan="3"><img alt="반려동물 사진" src="${pet.pet_image}" style ="width:200px;height:200px"></td>
        </tr>
        <tr>
            <td>사진 업로드</td>
        </tr>
        <tr>
            <td>사진 삭제</td>
        </tr>
    </table>
	<table style="border: black; align:center;">
        <tr>
            <td>이름</td>
            <td>${pet.name}</td>
        </tr>
        <tr>
            <td>동물 종류</td>
            <td>${pet.pet_type}</td>
        </tr>
        <tr>
            <td>품종</td>
            <td>${pet.breed}</td>
        </tr>
        <tr>
            <td>등록번호</td>
            <td>${pet.id}</td>
        </tr>
        <tr>
            <td>생년월일</td>
            <td>${pet.birth}</td>
        </tr>
        <tr>
            <td>성별</td>
            <td>${pet.gender}</td>
        </tr>
        <tr>
            <td>중성화 여부</td>
            <td>
            <c:choose>
           	<c:when test="${pet.isNeutered()}">O</c:when>
           	<c:otherwise>X</c:otherwise>
            </c:choose>
            </td>
        </tr>
        <tr>
            <td>과거 병력</td>
            <td>
            <c:if test="${pet.patella}">
            <c:out value="<p>슬개골, 탈구질환</p><br>" escapeXml="false"></c:out>
            </c:if>
            <c:if test="${pet.tooth}">
            <c:out value="<p>구강질환</p><br>" escapeXml="false"></c:out>
            </c:if>
            <c:if test="${pet.skin}">
            <c:out value="<p>피부질환</p><br>" escapeXml="false"></c:out>
            </c:if>
            <c:if test="${pet.scaling}">
            <c:out value="<p>스켈링</p><br>" escapeXml="false"></c:out>
            </c:if>
            </td>
        </tr>
    </table> --%>
	<ul>
		<li><a id="feed" href="#">사료</a></li>
		<li><a id="snack" href="#">간식</a></li>
		<li><a id="toy" href="#">장난감</a></li>
	</ul>

	<div id="msg"></div>

	<script type="text/javascript">
	
		window.onload = function() {
			var petSelect = document.querySelector('#petSelect');
			var no = petSelect.value;
			
			function handleSelectedOption() {
				no = petSelect.value;
				ajax(no, 'feed')
				console.log(no);
			}
			
			function ajax(no, category) {
				var options = {
					url : 'products',
					type : 'POST',
					data : JSON.stringify({
						petNo: no,
						category: category
					}),
					contentType: "application/json",
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
			
			petSelect.onchange = handleSelectedOption;
			
			handleSelectedOption();

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