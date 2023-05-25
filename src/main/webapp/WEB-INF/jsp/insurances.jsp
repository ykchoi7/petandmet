<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        
        #msg{
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
        
        .breed, .benefits {
            text-align: left;
        	width: 100%;
        	margin: 0.5rem 0rem 0px 0px;
        	background: rgb(255, 255, 255);
        }
        
        .age, .ratio, .period {
        	width: 15rem;
    		margin: 1.5rem 1.5rem 0px 0px;
        }
        
        .annual {
        	width: 15rem;
    		margin: 1.5rem 1.5rem 0px 0px;
        }
        
        .daily, .tooth {
        	width: 30rem;
    		margin: 1.5rem 1.5rem 0px 0px;
        }
        
        .patella, .skin, .scaling {
        	width: 15rem;
        	margin: 1.5rem 1.5rem 0px 0px;
        }
                
        .fee {
        	width: 100%;
        	margin: 1.5rem 1.5rem 0px 0px;
        	font-weight: bold;
        	font-size: 1.2rem;
        }
        
        #btn {
		    color: #060606;
			border-radius: 2px;
			padding: 7px 25px 8px 25px;
			white-space: nowrap;
			transition: 0.3s;
			font-size: 14px;
			display: inline-block;
			border: 2px solid #ffc451;
			background: #ffbb38;
			margin-top: 1rem;
			margin-bottom: 1.5rem;
		}
		
		#btn:hover {
			background-color: rgba(255,247,250,0);
  		    color: #343a40;
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
        <div class="insdetail">

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
	
	<div class="box" style="margin-left: 13rem; margin-bottom: 2rem; white-space:nowrap;">
	<h3>마이펫 선택</h3>
	<select id="petSelect">
		<c:forEach items="${petinfo}" var="pet">
		<option value="${pet.breed}">${pet.name}</option>
		</c:forEach>
	</select>
	</div>
	
	<div class="container">
	<div id = "msg"></div>
	
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
						msg.append('<div class="name"><h2>'+ item.name +'</div></h2><br>')
						msg.append('<div class="company"><p><b>' + item.company + '</b></p></div>')
						msg.append('<div class="breed"><p>품종: ' + item.breed + '</p></div>')
						msg.append('<div class="age"><p>대상 연령: <br>' + item.min_age + '개월 ~ ' + item.max_age + '개월 </p></div>')
						msg.append('<div class="ratio"><p>보장 비율: <br>' + item.coverage_ratio + '</p></div>')
						msg.append('<div class="period"><p>기간: <br>' + item.period + '개월 </p></div>')
						msg.append('<div class="benefits"><p>혜택: <br>' + item.benefits + '</p></div>')
						msg.append('<div class="annual"><p>1년 최대 보장 금액: <br>' + item.annual_limit +'원 </p></div>')
						msg.append('<div class="daily"><p>1일 최대 보장 금액: <br>' + item.daily_limit + '원 </p></div><br>')
						if (item.patella == true) {
							msg.append('<div class="patella"><p> 슬개골 보장 여부: ' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="patella"><p> 슬개골 보장 여부: ' + '미보장' +'</p></div>')
						}
						if (item.tooth == true) {
							msg.append('<div class="tooth"><p> 구강질환 보장 여부: ' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="tooth"><p> 구강질환 보장 여부: ' + '미보장' +'</p></div>')
						}
						if (item.skin == true) {
							msg.append('<div class="skin"><p> 피부질환 보장 여부: ' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="skin"><p> 피부질환 보장 여부: ' + '미보장' +'</p></div>')
						}
						if (item.scaling == true) {
							msg.append('<div class="scaling"><p> 스케일링 보장 여부: ' + '보장' +'</p></div>')
						} else {
							msg.append('<div class="scaling"><p> 스케일링 보장 여부: ' + '미보장' +'</p></div>')
						}
						if (item.method == 'monthly') {
							msg.append('<div class="fee"><b><p> 납입 금액 : 월 ' + item.fee +'</p></b></div>')
						} if (item.method == 'annually') {
							msg.append('<div class="fee"><b><p> 납입 금액 : 연 ' + item.fee +'</p></b></div>')
						}
						msg.append('<button id="btn" onclick="location.href=' + '"insurances"' +'> 상세보기' + '</button><br>')
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