<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	<title>pet&met</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	
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
<style>
	section{
    	padding-top: 30px;
   		padding-right: 0px;
    	padding-bottom: 80px;
    	padding-left: 0px;
    }
    
    h4{
    margin-bottom:2rem;
    }

	#homecol{
		color: #ffbb38;
	}
	
	#recommend{
		color:#6c757d;
	}
	
	#money{
		color:#6c757d;
	}
	
	#listshape{
		border-radius: 1rem;
		box-shadow: rgba(0, 0, 0, 0.08) 0px 0px 1.5rem 0px;
		background-color: rgb(255, 255, 255);        	
	}
	
	.item{
	height:110px;
	}
	
	#savingname{
		color: black;
    	font-size:14.5px;
    	letter-spacing:0.7px;
	}
	
	#savinginfo{
		color:#FF8000;
	}

	
</style>    
    
    
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header><!-- End Header -->

<!-- End Header -->

<main id="main">
	<!-- ======= Breadcrumbs ======= -->
	<section class="breadcrumbs">
		<div class="container">
			<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/" id=homecol><strong>Home</strong></a></li>
			    <li class="breadcrumb-item active" aria-current="page"><a href="/insurances" id=money>펫 금융</a></li>
			    <li class="breadcrumb-item active" aria-current="page">적금 추천</li>
			  </ol>
			</nav>
		</div>

		</div>
	</section><!-- End Breadcrumbs -->
	<section class="inner-page">
	<div class="container">
		
		<h4>최대 금리순 적금 목록</h4>
	
	<div class="list_saving" style="text-align:center">
				<table class="saving_list" id=listshape>
					<colgroup>
						<col width="500" >
						<col width="500">
						<col width="500">
					</colgroup>
					<tbody id="savingList">
						<c:forEach items="${savings}" var="saving">
								<tr class="item">
									<td class="image">
									<img src="${saving.image}" style="width: 200px; height:70px;"/>
									</td>
									<td class="detail">
										<div class="title" id=savingname>
											<strong>${saving.name}</strong> 
										</div>
										<div class="discount">
											최소 기한 ${saving.period}개월 <br>
											월 저축액 최소 <fmt:formatNumber value="${saving.min_saving_amount*1000}" pattern="#,###"></fmt:formatNumber>원  | 
											월 저축액 최대 <fmt:formatNumber value="${saving.max_saving_amount*1000}" pattern="#,###"></fmt:formatNumber>원 
										</div>
									</td>
									<td class="interest">
										<div class="interest">
											최대 금리 ${saving.interest_rate+saving.prime_rate}%
										</div>
										<a class="link-underline-dark" href="${saving.info_url}" id=savinginfo><strong>자세히 보기</strong></a>
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