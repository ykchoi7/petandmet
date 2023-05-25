<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Pet&Met</title>

<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="../../resources/assets/img/favicon.png" rel="icon">

<!-- Google Fonts -->
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-coding.css"
	rel="stylesheet">
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../../resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link
	href="../../resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="../../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../../resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="../../resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../../resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="../../resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../../resources/assets/css/style.css" rel="stylesheet">
<!-- html 분리 위함 -->
<script src="../../resources/assets/js/includeHTML.js"></script>
<!-- =======================================================
    * Template Name: Gp
    * Updated: Mar 10 2023 with Bootstrap v5.2.3
    * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top header-inner-pages">

		<div
			class="container d-flex align-items-center justify-content-lg-between">

			<a href="/" class="logo "> <img
				src="../../resources/assets/img/logo.png" alt=""
				style="height: 50px; width: 180px;">
			</a>

			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link scrollto active" href="#index">Home</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->


		</div>

	</header>
	<!-- End Header -->

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<h2>Finance</h2>
				<a href="/insurances" class="get-started-btn2 scrollto">보험 추천</a> 
				<a href="/card" class="get-started-btn2 scrollto">카드 추천</a> 
				<a href="/saving" class="get-started-btn2 scrollto">적금 추천</a>
			</div>

			</div>
		</section>
		<!-- End Breadcrumbs -->


		<section class="inner-page">
			<div class="container">
				<p>
					<a id="annualfee" class="get-started-btn scrollto">연회비낮은순</a> 
					<a id="hospital" class="get-started-btn scrollto">병원비할인율높은순</a> 
					<a id="shopping" class="get-started-btn scrollto">쇼핑몰할인율높은순</a> 
					<a id="shopsave" class="get-started-btn scrollto">쇼핑몰적립율높은순</a>
				</p>
				<div class="list_card" style="text-align: center","margin:auto 0">
					<table class="card_list">
						<colgroup>
							<col width="500">
							<col width="500">
							<col width="500">
						</colgroup>
						<tbody id="cardList">
							<c:forEach items="${cards}" var="card">
								<tr class="item" id=itemlist>
									<td class="image"><img src="${card.image}"
										style="width: 200px; height: 120px;" /></td>
									<td class="detail">
										<div class="title">
											<a href="/card/${card.no}"><strong>${card.name}</strong></a>
										</div>

										<div class="price">연회비 <fmt:formatNumber value="${card.annual_fee}" pattern="#,###"></fmt:formatNumber>원</div>
										<div class="discount">
											병원 할인율 ${card.hospital_discount}%  |  쇼핑몰 할인율
											${card.shopping_discount}% <br> 쇼핑몰 적립율
											${card.acc_rate}%
										</div>
									</td>
									<td class="benefits">
										<div class="good">${card.benefits}</div>
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
				let fee = parseInt(`${'${r.annual_fee}'}`).toLocaleString('ko-KR');
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'><a href='/card/${'${r.no}'}'><strong>${'${r.name}'}</strong></a></div>
						<div class='price'>연회비  ${'${fee}'}원</div>
						<div class='discount'>병원 할인율 ${'${r.hospital_discount}'}% | 쇼핑몰 할인율 ${'${r.shopping_discount}'}%  <br>  쇼핑몰 적립율 ${'${r.acc_rate}'}%</div>
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
				let fee = parseInt(`${'${r.annual_fee}'}`).toLocaleString('ko-KR');
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'><a href='/card/${'${r.no}'}'><strong>${'${r.name}'}</strong></a></div>
						<div class='price'>연회비  ${'${fee}'}원</div>
						<div class='discount'>병원 할인율 ${'${r.hospital_discount}'}% | 쇼핑몰 할인율 ${'${r.shopping_discount}'}%  <br>  쇼핑몰 적립율 ${'${r.acc_rate}'}%</div>
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
				let fee = parseInt(`${'${r.annual_fee}'}`).toLocaleString('ko-KR');
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'><a href='/card/${'${r.no}'}'><strong>${'${r.name}'}</strong></a></div>
						<div class='price'>연회비 ${'${fee}'}원</div>
						<div class='discount'>병원 할인율 ${'${r.hospital_discount}'}% | 쇼핑몰 할인율 ${'${r.shopping_discount}'}%  <br>  쇼핑몰 적립율 ${'${r.acc_rate}'}%</div>
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
				let fee = parseInt(`${'${r.annual_fee}'}`).toLocaleString('ko-KR');
				var item_el=
				`<tr class='item'>
					<td class='image'>
						<img src='${'${r.image}'}' style='width: 200px; height:120px;'>
					</td>
					<td class='detail'>
						<div class='title'><a href='/card/${'${r.no}'}'><strong>${'${r.name}'}</strong></a></div>
						<div class='price'>연회비  ${'${fee}'}원</div>
						<div class='discount'>병원 할인율 ${'${r.hospital_discount}'}% | 쇼핑몰 할인율 ${'${r.shopping_discount}'}%  <br> 쇼핑몰 적립율 ${'${r.acc_rate}'}%</div>
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
			</div>
		</section>
	</main>
	<!-- End #main -->
	<footer id="footer"
		include-html="../../resources/assets/html/footer.html"></footer>


	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="../../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="../../resources/assets/vendor/aos/aos.js"></script>
	<script
		src="../../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="../../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="../../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../../resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../../resources/assets/js/main.js"></script>

</body>
<script>
	includeHTML();
</script>
</html>