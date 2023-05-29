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


<style>
	.padding_top{
	padding-top:40px;
	}
	
	.card_detail_con .card_top{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 90px;
	padding-left: 0px;
	text-align : center;
	}
	
	div {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	strong {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	i {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	dl {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	span {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	dl {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	dd {
	margin:0;
	padding:0;
	border:0;
	verticla-align: top;
	display:block;
	}
	
	dl {
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	}
	
	dd {
	margin-inline-start: 40px;
	display:block;
	margin:0;
	padding:0;
	border:0;
	}
	
	.inner {
    position: relative;
    max-width: 1270px;
    margin: 0 auto;
    padding: 0 25px;
    }
    
    .view{
    word-wrap:break-word;
    }
    
    .view img{
    position : relative;
    } 
    
    .card_detail_con .card_top .in_box{
	position: relative;
    max-width: 1220px;
    width: auto;
	}
	
	.hide{
    position: absolute;
    top: -9999px;
    display: block;
    width: 0;
    height: 0;
    margin: 0;
    padding: 0;
    line-height: 0;
    font-size: 0;
    text-indent: -9999px;
	}
	
	h3{
	margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	font-weight: 400;
	letter-spacing: normal;
	}
	
	
	.card_detail_con .card_top .in_box .share{
    position: absolute;
    right: 0px;
    top: 0px;
    width: 24px;
    height: 24px;
    background: url('https://www.card-gorilla.com/statics/img/icon_share.png') no-repeat;
    background-size: 100%;
    cursor: pointer;
    -webkit-filter: brightness(20%);
    filter: brightness(20%);
	}
	
	
	
	.card_detail_con .card_top .card_img{
	display: inline-block;
    position: relative;
    z-index: 1;
    border-radius: 11px;
    max-width: 300px;
    max-height: 300px;
    min-height: 120px;
    border-radius: 8px;
    box-shadow: 0 10px 10px rgba(0,0,0,0.15);
	}
	
	
	.card_detail_con .card_top .data_area{
    position: relative;
    margin-top: -55px;
    padding: 84px 40px 40px;
    background: #fff;
    background-color: rgb(255,255,255);
    box-shadow: rgba(0, 0, 0, 0.08) 0px 0px 1.5rem 0px;
    min-height: 508px;
    border-radius: 1.5rem;
	}
	
	.card_detail_con .card_top .tit .card_name{
    line-height: 40px;
    font-size: 36px;
    color: #222;
    letter-spacing: -0.5px;
	}
	
	.view strong{
	font-weight: 700;
	}
	
	
	.card_detail_con .card_top .tit .brand{
    line-height: 36px;
    font-size: 20px;
    color: #222;
	}
	
	/*bnf1 스타일*/
	.card_detail_con .card_top .bnf1{
    min-height: 112px;
    margin-top: 24px;
    padding: 22px 0 25px;
    font-size: 0;
    background: url(https://www.card-gorilla.com/statics/img/dashed_01.png) repeat-x top;
	}
	
 	.card_detail_con .card_top .bnf1 dl.bnf11{
    padding-left: 80px;
    background-size: 65px;
	}
	
	.card_detail_con .card_top .bnf1 dl.bnf12{
	padding-left: 80px;
    background-size: 65px;
	} 
	
	
	.card_detail_con .card_top .bnf1 dl.bnf13{
	padding-left: 80px;
    background-size: 65px;
	}
	
	
	
	.card_detail_con .card_top .bnf1 dl:first-child {
    margin-left: 0;
	}
	
	.card_detail_con .card_top .bnf1 dl {
    display: inline-block;
    height: 65px;
    margin-left: 76px;
    font-size: 15px;
    text-align: left;
    font-weight: 600;
    color: #222;
    background-repeat: no-repeat;
    background-position-x: 0px;
    background-position-y: 2px;
    -webkit-filter: grayscale(1.0);
    filter: grayscale(1.0);
	}
	
 	.card_detail_con .card_top .bnf1 dl dt{
    line-height: 28px;
	}
	
 	.card_detail_con .card_top .bnf1 dl dd{
    line-height: 37px;
	}
	
 	.card_detail_con .card_top .bnf1 dl dd strong{
    font-family: Oswald,Malgun Gothic,Dotum,sans-serif;
    font-size: 30px;
    font-weight: 500;
    display: inline-block;
	}
	
	.card_detail_con .card_top .bnf1 dl dd i{
	display: inline-block;
    line-height: 10px;
    padding-top: 15px;
	}
 	
	
	.card_detail_con .card_top .bnf1 dl.bnf11 .ico{
    position: absolute;
    left: 0;
    top: 0;
    width: 70px;
    height: 70px;
    border-radius: 100%;
	}
	
	
	.card_detail_con .card_top .bnf1 dl.bnf12 .ico{
    position: absolute;
    left: 0;
    top: 0;
    width: 70px;
    height: 70px;
    border-radius: 100%;
	}
	
	.card_detail_con .card_top .bnf1 dl.bnf13 .ico{
    position: absolute;
    left: 0;
    top: 0;
    width: 70px;
    height: 70px;
    border-radius: 100%;
	}
	
 	
	.card_detail_con .card_top .bnf2{
    line-height: 24px;
    padding-top: 28px;
    font-size: 0;
    background: url(https://www.card-gorilla.com/statics/img/dashed_01.png) repeat-x top;
	}
	
	.card_detail_con .card_top .bnf2 dl:first-child {
    margin-left: 0;
	}
	
	.card_detail_con .card_top .bnf2 dl{
    display: inline-block;
    margin-left: 50px;
    font-size: 0;
	}
	
	
	.card_detail_con .card_top .bnf2 dl dt{
	display: inline-block;
    font-size: 14px;
    font-weight: 500;
    color: #222;
    margin-right: 4px;
    letter-spacing: -0.25px;
	}
	
	.hide{
    position: absolute;
    top: -9999px;
    display: block;
    width: 0;
    height: 0;
    margin: 0;
    padding: 0;
    line-height: 0;
    font-size: 0;
    text-indent: -9999px;
	}
	
	.card_detail_con .card_top .bnf2 dl dd {
    display: inline-block;
    font-weight: 500;
    color: #222;
	}
	
	.card_detail_con .card_top .bnf2 dl dd.in_out span {
    font-size: 18px;
	}
	
	.card_detail_con .card_top .bnf2 dl dd b {
    display: inline-block;
    line-height: 17px;
    padding-top: 3px;
    font-size: 18px;
    letter-spacing: -0.5px;
    color: #222;
	}
	
	
	#btn {
	    color: black;
		border-radius: 2px;
		padding: 8px 25px 8px 25px;
		white-space: nowrap;
		transition: 0.3s;
		font-size: 14px;
		display: inline-block;
		border: 2px solid #ffc451;
		background: #ffbb38;
		margin-top: 0rem;
		margin-bottom: 1rem;
		margin-left: 50rem;
		float: right;
	}
		
	#btn:hover {
		background-color: rgba(255,247,250,0);
 		color: #ffc451;
	}		
	
	#homecol{
		color:#ffbb38;
	}
	
	#recommend{
		color:#6c757d;
	}
	
	#money{
		color:#6c757d;
	}
	
	
</style>




</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header>
	<!-- End Header -->
	
	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section class="breadcrumbs">
		<div class=container>
			<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/" id=homecol><strong>Home</strong></a></li>
			    <li class="breadcrumb-item active" aria-current="page"><a href="/insurances" id=money>펫 금융</a></li>
			    <li class="breadcrumb-item active" aria-current="page"><a href="/card" id=recommend>카드 추천</a></li>
			    <li class="breadcrumb-item active" aria-current="page">카드 상세</li>
			  </ol>
			</nav>
		</div>
		</section><!-- End Breadcrumbs -->
	</main>
	<!-- End #main -->
	
	<div class="card_detail view">
		<section class = "padding_top">
				<div class="card_detail_con">
					<article class="card_top">
						<div class="inner">
							<div class="in_box">
									<h3 class="hide">카드 정보</h3>
									<span class="share"></span>
									<div class="card_img">
										<img alt="${cdto.name}" src="${cdto.image}" style='width: 300px; height : 190px;'>
									</div>
									<div class="data_area">
										<div class="tit">
											<strong class="card_name">${cdto.name}</strong>
											<p class="brand">${cdto.company}</p>
										</div>
									
									<div class="bnf1">
										<dl class="bnf11">
										<i class ="ico">
										<img src="https://cdn-icons-png.flaticon.com/256/4636/4636604.png"
										style="width:70px;height:70px"
										/>
										</i>
											<dt>동물병원 방문</dt>
											<dd>
												<strong>${cdto.hospital_discount}%</strong>
												<i>할인</i>
											</dd>
										</dl>
									
										<dl class="bnf12">
										<i class ="ico">
										<img src="https://cdn-icons-png.flaticon.com/256/5381/5381011.png"
										style="width:65px;height:65px"
										/>
										</i>
											<dt>온라인 쇼핑몰</dt>
											<dd>
												<strong>${cdto.shopping_discount}%</strong>
												<i>할인</i>
											</dd>
										</dl>
										
										<dl class="bnf13">
										<i class ="ico">
										<img src="https://cdn-icons-png.flaticon.com/256/2316/2316232.png"
										style="width:65px;height:65px"
										/>
										</i>
											<dt>오프라인 마켓</dt>
											<dd>
												<strong>${cdto.acc_rate}%</strong>
												<i>적립</i>
											</dd>
										</dl>
										
										
									</div>
										
	
									
									<div class="bnf2">
										<dl>
											<dt class="hide">연회비</dt>
											<dd class="in_out">
												<span>
												연회비
												<b><fmt:formatNumber value="${cdto.annual_fee}" pattern="#,###"></fmt:formatNumber></b>
												원
												</span>													
												<span>
												혜택
												<b>${cdto.benefits}</b>
												</span>
												<span>
												동물 보호 공익기금
												<b>
												<c:choose>
									             	<c:when test="${cdto.fund eq true}">
									             	<p>조성</p>
									             	</c:when>
									             	<c:otherwise>
									             	<p>미조성</p>
									             	</c:otherwise>
									              </c:choose>
												</b>
												</span>
											</dd>
										</dl>
									</div>
									<div class="app_btn">
									<a href="${cdto.info_url}">
										<button id="btn">카드 신청하기</button>
									</a>
									</div>
									
									<!-- <a class="information">
										<i></i>
									</a> --> 
									</div>
							</div>
						</div>
					</article>
				</div>
			</section>
		</div>
	
	
	
	<%-- <section id="card-details" class="card-details">
		<div class="row"> 
	
			<h3 align = "center" style = "margin-bottom:20px">카드 상세</h3>
	
		</div>
	
		<div class="container text-center">
  			<div class="row">
			    <div class="col">
			      <div>
			      	<img alt="${cdto.name}" src="${cdto.image}" style='width: 300px; height : 190px;'>
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
				        <a href="${cdto.info_url}"><strong>카드 신청하러 가기</strong></a>			
				        </div>
				    </div>
		  		</div>
		 	</div>
		</div> 
     </section> --%>
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