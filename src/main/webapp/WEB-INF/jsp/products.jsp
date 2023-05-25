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

	<!--  bootstrap 5.3.0 css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	
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
                <h2>상품 추천 페이지</h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li>상품 추천 페이지</li>
                </ol>
            </div>
		</div>
	</section>
    <section class="inner-page">
    	<div class="container">
    		<div class="d-inline-flex flex-column">
				<label for="petSelect">반려동물 선택</label>
				<img id="petimg" src="" width="100" height="100">
				<select id="petSelect">
					<c:forEach items="${pets}" var="pet">
						<option value="${pet.no} ${pet.pet_image}">${pet.name}</option>
					</c:forEach>
				</select>
    		</div>
			
		    <nav class="col-10 nav mb-3">
		        <a class="nav-item nav-link" href="#" id="feed">
		        	사료
		        </a>
		        <a class="nav-item nav-link" href="#" id="snack">
		            간식
		        </a>
		        <a class="nav-item nav-link" href="#" id="toy">
		            장난감
		        </a>
		    </nav>
		   	
		   	<div class="mb-3">
				<button class="get-started-btn scrollto" id="default">기본순</button>
				<button class="get-started-btn scrollto" id="price-asc">가격 낮은순</button>
				<button class="get-started-btn scrollto" id="price-desc">가격 높은순</button>
		   	</div>
			
			<div class="row row-cols-1 row-cols-md-2 g-4" id="products"></div>
			
			<%-- <table id="msg">
			</table> --%>
    	</div>
    </section>
    
</main><!-- End #main -->

<footer id="footer" include-html="../../resources/assets/html/footer.html"></footer>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- bootstrap 5.3.0 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
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
	

<script type="text/javascript">
	window.onload = function() {
		let f = () => {} // 화살표 함수
		includeHTML(f); // 콘솔 오류뜨는거 방지하려고 파라미터로 f 같이 보냈음
		
		let petSelect = document.querySelector('#petSelect');
		let petInfo = petSelect.value.split(' ')
		let no = petInfo[0]
		let image = petInfo[1]
		let list = [];
		let products = $('#products')
		let feed = document.querySelector('#feed')
		let snack = document.querySelector('#snack')
		let toy = document.querySelector('#toy')
		let dft = document.querySelector('#default')
		let price_asc = document.querySelector('#price-asc')
		let price_desc = document.querySelector('#price-desc')
		let petimg = document.querySelector('#petimg');
		
		function print() {
			products.html('')
			$.each(list, function(index, item) {
				let price = parseInt(`${'${item.price}'}`).toLocaleString('ko-KR');
				products.append(`<div class="col">
					<a href="/products/${'${item.no}'}" class="text-decoration-none">
						<div class="card h-100">
							<img src="${'${item.image}'}" class="card-img-top " alt="${'${item.name}'}">
							<div class="card-body">
								<h5 class="card-title">${'${item.name}'}</h5>
								<p class="card-text"> </p>
							</div>
							<div class="card-footer">
								<small class="text-body-secondary">${'${price}'}원</small>
							</div>
						</div>
					</a>
				</div>`)
			})
		}

		function handleSelectedOption() {
			petInfo = petSelect.value.split(' ')
			no = petInfo[0]
			image = petInfo[1]
			petimg.setAttribute('src', image)
			ajax(no, '사료')
		}

		function ajax(no, category) {
			let options = {
				url : 'products',
				type : 'POST',
				data : JSON.stringify({
					petNo : no,
					category : category
				}),
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {
					list = data;
					print()
				},
				error : function() {
					console.log('오류 발생')
				}
			}
			$.ajax(options)
		}
		
		feed.addEventListener("click", function(e) {
			ajax(no, '사료')
			e.preventDefault()
		})
		
		snack.addEventListener("click", function(e) {
			ajax(no, '간식')
			e.preventDefault()
		})
		
		toy.addEventListener("click", function(e) {
			ajax(no, '장난감')
			e.preventDefault()
		})
		
		dft.addEventListener("click", function(e) {
			list.sort(function(a, b) {
				return a.no - b.no;
			})
			print();
		})
		
		price_asc.addEventListener("click", function(e) {
			list.sort(function(a, b) {
				return a.price - b.price;
			})
			print();
		})
		
		price_desc.addEventListener("click", function(e) {
			list.sort(function(a, b) {
				return b.price - a.price;
			})
			print();
		})

		petSelect.addEventListener("change", handleSelectedOption);

		handleSelectedOption();
		
	};
</script>
</body>
</html>