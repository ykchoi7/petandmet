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
        
        #petSelect {
        	width: 10rem;
        	height: 3rem;
        	margin: 10px;
		    visibility: visible;
		    color: rgb(51, 51, 51);
		    flex: 1 1 auto;
		    display: inline-grid;
		    grid-area: 1 / 1 / 2 / 3;
		    grid-template-columns: 0px min-content;
		    box-sizing: border-box;
		    padding: 0.5rem 0.5rem 0.5rem 0px;
        }
        
        .container {
        	margin-top: 1rem;
        	margin-left: 12rem;
        	margin-right: 20rem;
        }
        
        #msg{
			width: 80%;
			padding: 2.4rem 3rem 4rem;
			margin-bottom: 2.5rem;
			border-radius: 1.5rem;
			box-shadow: rgba(0, 0, 0, 0.08) 0px 0px 1.5rem 0px;
			background-color: rgb(255, 255, 255);
			display: flex;
        	flex-wrap: wrap;
        	text-align: left;
        }
        
        /* mark {
        	background-color: ivory;
        } */
        
        .name {
        	color: #ffbb38;
        	width: 100%;
		    vertical-align: baseline;
		    -webkit-box-align: center;
		    align-items: center;
		    margin: 10px;
	        border: 2px solid #ffbb38;
			padding: 20px 20px 10px 20px;
        }
        
        .company {
        	text-align: left;
        	width: 100%;
        	margin: 1rem 0rem 0px 0px;
			padding: 0px 20px 0px 20px;
        	background: rgb(255, 255, 255);
        	text-decoration-line: underline;
   			text-decoration-style: double;
   			text-decoration-color: #ffbb38;
        }
        
        .breed, .benefits {
            text-align: left;
        	width: 100%;
        	margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        	background: rgb(255, 255, 255);
        }
        
        .age {
        	width: 13rem;
    		margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
        
        .ratio {
        	width: 13rem;
    		margin: 1rem 1rem 0px 1.2rem;
			padding: 0px 20px 0px 20px;
        }
        
        .period {
        	width: 20rem;
    		margin: 1rem 0rem 0px -1rem;
			padding: 0px 20px 0px 20px;
        }
        
        .annual {
        	width: 13rem;
    		margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
        
        .daily {
        	width: 30rem;
    		margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
        
        .patella, .skin, .scaling, .tooth {
        	width: 13rem;
        	margin: 1.5rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
     
        .fee {
        	width: 100%;
        	margin: 2rem 2.5rem 0px 3rem;
        	font-weight: bold;
        	font-size: 1.4rem;
        	text-align: right;
        	text-weight: strong;
        	color: orange;
        	/* text-decoration-line: underline;
   			text-decoration-color: #ffbb38; */
        }
        
        #btn {
		    color: white;
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
        
    </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
		<div class="container">
			<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">펫 금융</li>
			    <li class="breadcrumb-item active" aria-current="page">보험 추천</li>
			  </ol>
			</nav>
		</div>
	</section> <!-- End Breadcrumbs -->
	
	<section class="inner-page" style="align-items: center;">
	
	<div class="box" style="vertical-align:middle; line-height: 75px; margin-left: 13rem; margin-bottom: 1rem; white-space:nowrap;">
		<h4 style="display:inline; margin-top: 2rem;">마이 펫 선택 </h4>
		<select id="petSelect">
			<c:forEach items="${petinfo}" var="pet">
			<option value="${pet.breed}">${pet.name}</option>
			</c:forEach>
		</select>
	</div>
	
	<div class="container">
	<div id = "msg">
	
	<script type="text/javascript">
	
	window.onload = function() {
		var petSelect = document.querySelector('#petSelect');
		var breed = petSelect.value;
		
		function handleSelectedOption() {
			breed = petSelect.value;
			ajax(breed)
			console.log(breed);
		}
		
		function ajax(breed) {
			var options = {
				url : 'insurances',
				type : 'POST', 
				data : {
					breed: breed
				},
				// contentType: "application/json",
				success : function(data) {
					var msg = $('#msg')
					msg.html('')
					$.each(data.li, function(index, item){
						let annual = parseInt(`${'${item.annual_limit}'}`).toLocaleString('ko-KR');
						let daily = parseInt(`${'${item.daily_limit}'}`).toLocaleString('ko-KR');
						let fee = parseInt(`${'${item.fee}'}`).toLocaleString('ko-KR');
						
						msg.append('<div class="name"><h2>'+ item.name +'</h2></div><br>')
						msg.append('<div class="company"><h5>' + item.company + '</h5></div>')
						msg.append('<div class="breed"><h6>품종: ' + item.breed + '</h6></div>')
						msg.append('<div class="age"><div style="color: #828282; font-size: 14px;"> 대상 연령: </div>' 
								+ '<p style="font-size: 18px; font-weight: 900;">' +item.min_age + '개월 ~ ' + item.max_age/12 +'세'+ '</p></div>')
						msg.append('<div class="ratio"><div:after><div style="color: #828282; font-size: 14px;">보장 비율: </div>' 
								+ '<p style="font-size: 18px; font-weight: 900;">' + item.coverage_ratio*100 + '% </p></div:after></div>')
						msg.append('<div class="period"><div style="color: #828282; font-size: 14px;"> 기간: </div>' 
								+ '<p style="font-size: 18px; font-weight: 900;">' + item.period/12 + '년 </p></div>')
						msg.append('<div class="annual"><div style="color: #828282; font-size: 14px;">1년 최대 보장 금액: </div>' 
								+ '<p style="font-size: 18px; font-weight: 900;">' + annual +'원 </p></div>')
						msg.append('<div class="daily"><div style="color: #828282; font-size: 14px;">1일 최대 보장 금액: </div>' 
								+ '<p style="font-size: 18px; font-weight: 900;">' + daily + '원 </p></div>')
						msg.append('<hr style="width: 100%; border-top: 2px dashed #ffbb38;">')
						msg.append('<div class="benefits"><div style="font-size: 14px;">혜택: </div>' + item.benefits + '</div><br>')
						if (item.patella == true) {
							msg.append('<div class="patella"><div style="font-size: 14px;"> 슬개골 보장 여부: </div>' + '<strong>보장</strong>' +'</div>')
						} else {
							msg.append('<div class="patella"><div style="font-size: 14px;"> 슬개골 보장 여부: </div>' + '<strong>미보장</strong>' +'</div>')
						}
						if (item.tooth == true) {
							msg.append('<div class="tooth"><div style="font-size: 14px;"> 구강질환 보장 여부: </div>' + '<strong>보장</strong>' +'</div>')
						} else {
							msg.append('<div class="tooth"><div style="font-size: 14px;"> 구강질환 보장 여부: </div>' + '<strong>미보장</strong>' +'</div>')
						}
						if (item.skin == true) {
							msg.append('<div class="skin"><div style="font-size: 14px;"> 피부질환 보장 여부: </div>' + '<strong>보장</strong>' +'</div>')
						} else {
							msg.append('<div class="skin"><div style="font-size: 14px;"> 피부질환 보장 여부: </div>' + '<strong>미보장</strong>' +'</div>')
						}
						if (item.scaling == true) {
							msg.append('<div class="scaling"><div style="font-size: 14px;"> 스케일링 보장 여부: </div>' + '<strong>보장</strong>' +'</div>')
						} else {
							msg.append('<div class="scaling"><div style="font-size: 14px;"> 스케일링 보장 여부: </div>' + '<strong>미보장</strong>' +'</div>')
						}
						if (item.method == 'monthly') {
							msg.append('<br><div class="fee"><strong><p> 납입 금액 : 월 ' + fee +'</p></strong></div>')
						} if (item.method == 'annually') {
							msg.append('<br><div class="fee"><strong><p> 납입 금액 : 연 ' + fee +'</p></strong></div>')
						}
						msg.append('<a href = "insurances/ ' + item.no + '">' + '<button id="btn">' + '상세보기' + '</button></a><br>')
						msg.append('<hr style="width: 100%; background-color: solid 1px grey;">')
						msg.append('<br><br>')
					});
				},
				error : function() {
				}
			}
			$.ajax(options)
		}
		petSelect.onchange = handleSelectedOption;
		handleSelectedOption();
	};
	
	</script>
	</div>
	</div>
    </section>
</main>
    
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

<script>
    includeHTML();
</script>
</body>
</html>