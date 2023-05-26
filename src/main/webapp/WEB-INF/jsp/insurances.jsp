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
        
        .age, .ratio {
        	width: 13rem;
    		margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
        
        .ratio {
        	width: 13rem;
    		margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
        
        .period {
        	width: 20rem;
    		margin: 1rem 1rem 0px 0px;
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
        	margin: 1rem 1rem 0px 0px;
			padding: 0px 20px 0px 20px;
        }
     
        .fee {
        	width: 100%;
        	margin: 1rem 2.5rem 0px 3rem;
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
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar.html"></header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>보험 추천</h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li>마이페이지</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->
	
	<section class="inner-page" style="align-items: center;">
	
	<div class="box" style="vertical-align:middle; line-height: 75px; margin-left: 13rem; margin-bottom: 1rem; white-space:nowrap;">
		<h3 style="display:inline; margin-top: 2rem;">마이펫 선택 </h3>
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
						msg.append('<div class="name"><h2>'+ item.name +'</h2></div><br>')
						msg.append('<div class="company"><p><b>' + item.company + '</b></p></div>')
						msg.append('<div class="breed"><p>품종: ' + item.breed + '</p></div>')
						msg.append('<div class="age"> 대상 연령: <br>' + '<p style="font-size: 18px; font-weight: bold;">' +item.min_age + '개월 ~ ' + item.max_age/12 +'세'+ '</p></div>')
						msg.append('<div class="ratio"><div:after>보장 비율: <br>' + '<p style="font-size: 18px; font-weight: bold;">' + item.coverage_ratio*100 + '% </p></div:after></div>')
						msg.append('<div class="period">기간: <br>' + '<p style="font-size: 18px; font-weight: bold;">' + item.period/12 + '년 </p></div>')
						msg.append('<div class="annual">1년 최대 보장 금액: <br>' + '<p style="font-size: 18px; font-weight: bold;">' + item.annual_limit +'원 </p></div>')
						msg.append('<div class="daily">1일 최대 보장 금액: <br>' + '<p style="font-size: 18px; font-weight: bold;">' + item.daily_limit + '원 </p></div>')
						msg.append('<div class="benefits"><p>혜택: <br>' + item.benefits + '</p></div>')
						if (item.patella == true) {
							msg.append('<div class="patella"><p> 슬개골 보장 여부: <br>' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="patella"><p> 슬개골 보장 여부: <br>' + '미보장' +'</p></div>')
						}
						if (item.tooth == true) {
							msg.append('<div class="tooth"><p> 구강질환 보장 여부: <br>' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="tooth"><p> 구강질환 보장 여부: <br>' + '미보장' +'</p></div>')
						}
						if (item.skin == true) {
							msg.append('<div class="skin"><p> 피부질환 보장 여부: <br>' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="skin"><p> 피부질환 보장 여부: <br>' + '미보장' +'</p></div>')
						}
						if (item.scaling == true) {
							msg.append('<div class="scaling"><p> 스케일링 보장 여부: <br>' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="scaling"><p> 스케일링 보장 여부: <br>' + '미보장' +'</p></div>')
						}
						if (item.method == 'monthly') {
							msg.append('<div class="fee"><strong><p> 납입 금액 : 월 ' + item.fee +'</p></strong></div>')
						} if (item.method == 'annually') {
							msg.append('<div class="fee"><strong><p> 납입 금액 : 연 ' + item.fee +'</p></strong></div>')
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