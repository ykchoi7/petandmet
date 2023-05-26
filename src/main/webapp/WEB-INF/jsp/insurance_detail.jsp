<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        th,td{
            border: 1px solid #444444;
        }
        
        .container {
        	margin-left: 12rem;
        	margin-right: 20rem;
        }
        
        .info {
			width: 80%;
			padding: 2.4rem 3rem 4rem;
			margin-bottom: 3rem;
			border-radius: 1.5rem;
			box-shadow: rgba(0, 0, 0, 0.08) 0px 0px 1.5rem 0px;
			background-color: rgb(255,255,255);
			display: flex; 
        	flex-wrap: wrap;
        	text-align: left;
        }
        
        .name {
        	width: 100%;
		    vertical-align: baseline;
		    -webkit-box-align: center;
		    align-items: center;
        }
        
        .company {
        	height: 2rem;
        	line-height: 6px;
        	vertical-align: middle;
        	background: rgb(255, 255, 255);
		    border: 0.1rem solid rgb(255, 170, 0);
		    color: rgb(255, 170, 0);
		    padding: 0.8rem 1.4rem;
		    border-radius: 1.65rem;
		    font-size: 0.8rem;
		    cursor: auto;
		    font-style: italic;
		    font-weight: bold;
        }
        
        .ratio {
        	text-align: left;
        	width: 100%;
        	margin: 1rem 5rem 0px 0px;
        	background: rgb(255, 255, 255);
        	font-size: 22px;
        	font-weight: extra bold;
        	color: orange;
        	text-decoration-line: underline;
   			text-decoration-style: double;
   			text-decoration-color: #ffbb38;
        }
        
        
        .benefits {
            text-align: left;
        	width: 100%;
        	margin: 1.5rem 2rem 1rem 0px;
        	background: rgb(255, 255, 255);
        }
        
        .breed, .age, .period {
        	width: 22%;
    		margin: 1.5rem 1.5rem 1rem 0px;
        }
        
        .annual {
        	width: 15rem;
    		margin: 4rem 1.5rem 0px 0px;
    		font-size: 22px;
    		font-weight: bold;
        }
        
        .daily {
        	width: 30rem;
    		margin: 4rem 1.5rem 0px 0px;
    		font-size: 22px;
    		font-weight: bold;
        }
        
        .patella, .skin, .scaling, .tooth {
        	width: 22%;
        	margin: 1.5rem 1.5rem 1rem 0px;
        }
                
        .fee {
        	width: 100%;
        	margin: 1.5rem 1.5rem 1rem 0px;
        	font-weight: strong;
        	font-size: 1.5rem;
        	color: orange;
        	text-decoration-line: underline;
   			text-decoration-color: #ffbb38;
        }
        
        #btn {
		    color: #33333;
			border-radius: 2px;
			padding: 8px 450px 8px 430px;
			white-space: nowrap;
			transition: 0.3s;
			font-size: 15px;
			display: inline-block;
			border: 2px solid #ffc451;
			background: #ffc451;
			margin-top: 1rem;
			margin-bottom: 1.5rem;
		}
		
		#btn:hover {
			background-color: rgba(255,247,250,0);
  		    color: #ffc451;
		}
		
        
    </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar.html"></header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>보험 상세</h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li>마이페이지</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->
	
	<section class="inner-page" style="align-items: center;">
	
	<div class="container">
		<div class="info">
			<c:forEach items="${detail}" var="i">
			<div class="name"><h2>${i.name}</h2></div>
			<div class="company"><p>${i.company}</p></div>
			<hr style="width: 100%; border-top: 0.5px solid black; margin-top:2rem;">
			
			<div class="ratio"><p>보장비율: ${i.coverage_ratio*100}% </p></div>
			<div class="annual"><p style="font-size: 15px">1년 최대 보장 금액: </p>
			<fmt:formatNumber type="number" maxFractionDigits="0" value="${i.annual_limit}"/>원</div>
			<div class="daily"><p style="font-size: 15px">1일 최대 보장 금액: </p>
			<fmt:formatNumber type="number" maxFractionDigits="0" value="${i.daily_limit}"/>원 </p></div>
			<hr style="width: 100%; border-top: 0.5px solid black;">
			
			<div class="breed"><p>품종: <br>${i.breed}</p></div>
			<div class="age"><p>대상 연령: <br>${i.min_age}개월 ~ ${i.max_age/12}세  </p></div>
			<div class="period"><p>기간: <br>${i.period/12}년 </p></div>
			<div class="benefits"><p>혜택: <br>${i.benefits} </p></div>
			
			<div class="patella">슬개골 보장 여부:
				<p style="font-size: 18px; font-weight: bold;">
				<c:if test="${i.patella}">
					보장
				</c:if>
				<c:if test="${not i.patella}">
					미보장
				</c:if>
				</p>
			</div>
			<div class="tooth">구강질환 보장 여부:
				<p style="font-size: 18px; font-weight: bold;">
				<c:if test="${i.tooth}">
					보장
				</c:if>
				<c:if test="${not i.tooth}">
					미보장
				</c:if>
				</p>
			</div>
			<div class="skin">피부질환 보장 여부: 
				<p style="font-size: 18px; font-weight: bold;">
				<c:if test="${i.skin}">
					보장
				</c:if>
				<c:if test="${not i.skin}">
					미보장
				</c:if>
				</p>
			</div>
			<div class="scaling">스케일링 여부: 
				<p style="font-size: 18px; font-weight: bold;">
				<c:if test="${i.scaling}">
					보장
				</c:if>
				<c:if test="${not i.scaling}">
					미보장
				</c:if>
				</p>
			</div>
			
			<div class="fee"><p><b>납입 금액: 
				<c:if test="${i.method eq 'monthly'}">
					월 <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.fee}"/>
				</c:if>
				<c:if test="${i.method eq 'annually'}">
					연 <fmt:formatNumber type="number" maxFractionDigits="0" value="${i.fee}"/>
				</c:if>
			</b></p></div>
					
			</c:forEach>
			<br>
			
			<a href = "https://store.meritzfire.com/pet/main.do#!/"><button id="btn">가입하기</button></a>
			
		</div>
	</div>
	
    </section>
    
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