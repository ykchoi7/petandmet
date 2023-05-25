<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	<title>pet&met</title>
	<meta content="" name="description">
	<meta content="" name="keywords">

	<!-- Favicons -->
	<link href="../../resources/assets/img/favicon.png" rel="icon">

	<!-- Google Fonts -->
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-coding.css" rel="stylesheet">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="../../resources/assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="../../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="../../resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	<link href="../../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="../../resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
	<link href="../../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

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

	<div class="container d-flex align-items-center justify-content-lg-between">

		<a href="/" class="logo ">
			<img src="../../resources/assets/img/logo.png" alt="" style="height:50px; width: 180px;">
		</a>

		<!-- Uncomment below if you prefer to use an image logo -->
		<!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

		<nav id="navbar" class="navbar order-last order-lg-0">
			<ul>
				<li><a class="nav-link scrollto active" href="#index">Home</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav><!-- .navbar -->


	</div>

</header><!-- End Header -->

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
	</section><!-- End Breadcrumbs -->
	<section class="inner-page">
	<div class="container">
		<p>
		<h4>최대 금리순 적금 목록</h4>
		</p>
	<div class="list_saving" style="text-align:center">
				<table class="saving_list">
					<colgroup>
						<col width="500" >
						<col width="500">
						<col width="500">
					</colgroup>
					<tbody id="savingList">
						<c:forEach items="${savings}" var="saving">
								<tr class="item">
									<td class="image">
									<img src="${saving.image}" style="width: 200px; height:100px;"/>
									</td>
									<td class="detail">
										<div class="title">
											<strong>${saving.name}</strong> 
										</div>
										<div class="discount">
											최소 기한 ${saving.period} 개월 <br>
											월 저축액 최소 ${saving.min_saving_amount*1000} 원 | 월 저축액 최소 ${saving.max_saving_amount*1000} 원
										</div>
									</td>
									<td class="interest">
										<div class="interest">
											최대 금리 ${saving.interest_rate+saving.prime_rate} %
										</div>
										<a href="${saving.info_url}">더 많은 정보 확인하기</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					
					</table>
				</div>		
	</section>
	</main><!-- End #main -->
<footer id="footer" include-html="../../resources/assets/html/footer.html"></footer>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="../../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="../../resources/assets/vendor/aos/aos.js"></script>
<script src="../../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="../../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="../../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="../../resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="../../resources/assets/js/main.js"></script>
	
	
</body>
<script>
	includeHTML();
</script>
</html>