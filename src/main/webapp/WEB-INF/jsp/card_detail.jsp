<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>PET&MET</title>
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
	<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header>
	<!-- End Header -->
	
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section class="breadcrumbs">
			<div class="container">
				<h2>금융</h2>
			</div>
	
		</section><!-- End Breadcrumbs -->
	</main>
	<!-- End #main -->
	
	<section id="card-details" class="card-details">
		<div class="row"> 
	
			<h3 align = "center" style = "margin-bottom:20px">카드 상세</h3>
	
		</div>
	
		<div class="container text-center">
  			<div class="row">
			    <div class="col">
			      <div>
			      	<img alt="${cdto.name}" src="${cdto.image}" style='width: 360px; height : 250px;'>
			      </div>
			    </div>
				<h3 align = "center" class="title"  style = "margin-bottom:10px; margin-top:20px">${cdto.name}</h3>
				<div class="d-flex justify-content-evenly" style = "margin-bottom:10px; margin-top:20px"> 
				    <div>
						<h5>요약</h5>
						<div class="price">
							연회비 <fmt:formatNumber value="${cdto.annual_fee}" pattern="#,###"></fmt:formatNumber> 원
						</div>
						<div class="discount" >
							동물병원 방문시, ${cdto.hospital_discount}% 결제일 할인<br>
							쇼핑몰 ${cdto.shopping_discount}% 결제일 할인<br>
							쇼핑몰 ${cdto.acc_rate}% 적립
						</div>
						<div class="good">
							${cdto.benefits}
						</div>
					</div>
		
			    	<div class="vr"></div>
			    
				    <div>
				      <div class="card-sub" id=cardsub>
		              	<h5>부가 혜택</h5>
				             <c:choose>
				             	<c:when test="${cdto.insurance_reg eq true}">
				             	<p>동물 단체 보험 가입 보장</p>
				             	</c:when>
				             	<c:otherwise>
				             	<p>동물 단체 보험 가입 미보장</p>
				             	</c:otherwise>
				             </c:choose>
				             
				             <c:choose>
				             	<c:when test="${cdto.fund eq true}">
				             	<p>동물 보호 공익기금 조성</p>
				             	</c:when>
				             	<c:otherwise>
				             	<p>동물 보호 공익기금 미조성</p>
				             	</c:otherwise>
				              </c:choose>
		            	</div>
				    </div>
		  		</div>
		 	</div>
		</div> 
     </section>
<!-- End Card Details Section -->
	
	

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