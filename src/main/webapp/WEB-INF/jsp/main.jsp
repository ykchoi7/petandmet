<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<title>Pet&Met</title>
	<meta content="" name="description">
	<meta content="" name="keywords">

	<!-- Favicons -->
	<link href="<../../resources/assets/img/favicon.png" rel="icon">

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
<header id="header" class="fixed-top ">
	<div class="container d-flex align-items-center justify-content-lg-between">

		<a href="index.html" class="logo ">
			<img src="../../resources/assets/img/logo.png" alt="" style="height:50px; width: 180px;">
		</a>

		<!-- Uncomment below if you prefer to use an image logo -->
		<!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

		<div>
			<a href="login" class="get-started-btn scrollto">로그인</a>
			<a href="login.html" class="get-started-btn scrollto">회원가입</a>
		</div>


	</div>
</header><!-- End Header -->

<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex align-items-center justify-content-center">
	<div class="container" data-aos="fade-up">

		<div class="row justify-content-center" data-aos="fade-up" data-aos-delay="150">
			<div class="col-xl-6 col-lg-8">
				<h1> Pet<span>&</span>Met</h1>
				<h2>펫과 우리가 만나 행복이 더해지다</h2>
			</div>
		</div>

		<div class="row gy-4 mt-5 justify-content-center" data-aos="zoom-in" data-aos-delay="250">
			<div class="col-xl-2 col-md-4">
				<div class="icon-box">
					<i class="ri-store-line"></i>
					<h3><a href="">Finance</a></h3>
				</div>
			</div>
			<div class="col-xl-2 col-md-4">
				<div class="icon-box">
					<i class="ri-paint-brush-line"></i>
					<h3><a href="">Health</a></h3>
				</div>
			</div>
			<div class="col-xl-2 col-md-4">
				<div class="icon-box">
					<i class="ri-database-2-line"></i>
					<h3><a href="">Chat</a></h3>
				</div>
			</div>
		</div>

	</div>
</section><!-- End Hero -->

<main id="main">

	<!-- ======= About Section ======= -->
	<section id="about" class="about">
		<div class="container" data-aos="fade-up">

			<div class="row">
				<div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
					<img src="../../resources/assets/img/about.png" class="img-fluid" alt="">
				</div>
				<div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right" data-aos-delay="100">
					<h3>Pet & Met - 펫과 우리가 만나 행복이 더해지다.</h3>
					<p class="fst-italic">
						반려인의 비용 및 시간을 효율적으로 사용하게 하고 반려견의 더 건강한 삶을 도모하는 통합 서비스 제공
					</p>
					<ul>
						<li><i class="ri-check-double-line"></i> 동물 등록제 활성화를 돕고, 금융 상품 및 헬스 케어 제도 활용 증가</li>
						<li><i class="ri-check-double-line"></i> 나의 반려동물 맞춤 금융 상품 추천으로 시간 절약 및 최적화된 자금 활용</li>
						<li><i class="ri-check-double-line"></i> 반려동물에게 필요한 간식 및 용품 추천으로 반려동물 건강 향상</li>
						<li><i class="ri-check-double-line"></i> 온라인 챗 상담으로 보호자의 의사 결정 도움</li>
					</ul>
				</div>
			</div>

		</div>
	</section><!-- End About Section -->

	<!-- ======= Services Section ======= -->
	<section id="services" class="services">
		<div class="container" data-aos="fade-up">

			<div class="section-title">
				<h2>Services</h2>
				<p>Check our Services</p>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
					<div class="icon-box">
						<div class="icon"><i class="bi bi-coin"></i></div>
						<h4><a href="">금융</a></h4>
						<p>반려동물 맞춤 금융 상품 추천 - 시간 절약 및 최적화된 자금 활용</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
					<div class="icon-box">
						<div class="icon"><i class="bi bi-hearts"></i></div>
						<h4><a href="">헬스</a></h4>
						<p> 반려동물에게 필요한 간식 및 용품 추천 - 반려동물의 건강 증진</p>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
					<div class="icon-box">
						<div class="icon"><i class="bi bi-chat-heart"></i></div>
						<h4><a href="">상담</a></h4>
						<p> 온라인 채팅 상담 - 보호자의 의사 결정 도움 및 반려동물 건강관리</p>
					</div>
				</div>


			</div>

		</div>
	</section><!-- End Services Section -->



	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts">
		<div class="container" data-aos="fade-up">

			<div class="row no-gutters">
				<div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start" data-aos="fade-right" data-aos-delay="100"></div>
				<div class="col-xl-7 ps-0 ps-lg-5 pe-lg-1 d-flex align-items-stretch" data-aos="fade-left" data-aos-delay="100">
					<div class="content d-flex flex-column justify-content-center">
						<h3>숫자로 확인하는 Pet & Met</h3>
						<p>
							다양한 금융, 헬스 상품들의 추천과 리뷰를 통해 반려인과 반려동물 모두를 만족 시킬 최고의 서비스!
						</p>
						<div class="row">
							<div class="col-md-6 d-md-flex align-items-md-stretch">
								<div class="count-box">
									<i class="bi bi-emoji-smile"></i>
									<span data-purecounter-start="0" data-purecounter-end="65" data-purecounter-duration="2" class="purecounter"></span>
									<p>현재 약 65개의 사용자 리뷰를 확인할 수 있으며, 직접 이용해 본 사용자들의 리뷰로 더 꼼꼼한 비교가 가능합니다.</p>
								</div>
							</div>

							<div class="col-md-6 d-md-flex align-items-md-stretch">
								<div class="count-box">
									<i class="bi bi-journal-richtext"></i>
									<span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="2" class="purecounter"></span>
									<p>현재 약 85개의 제품 정보 제공 중으로, 정확하고 빠른 상품 정보 제공을 통해 반려인들의 시간을 절약해줍니다.</p>
								</div>
							</div>

							<div class="col-md-6 d-md-flex align-items-md-stretch">
								<div class="count-box">
									<i class="bi bi-clock"></i>
									<span data-purecounter-start="0" data-purecounter-end="1" data-purecounter-duration="2" class="purecounter"></span>
									<p>바쁜 현대사회에서 우리에게 필요한 시간, 단 1분. Pet&Met 1분만 투자해주세요. 완벽한 추천 서비스를 제공해드립니다.</p>
								</div>
							</div>

							<div class="col-md-6 d-md-flex align-items-md-stretch">
								<div class="count-box">
									<i class="bi bi-award"></i>
									<span data-purecounter-start="0" data-purecounter-end="10" data-purecounter-duration="2" class="purecounter"></span>
									<p>현재 보유 전문가 수 10명. 보다 전문적인 상담을 통해 반려생활의 질을 높혀줍니다.</p>
								</div>
							</div>
						</div>
					</div><!-- End .content-->
				</div>
			</div>

		</div>
	</section><!-- End Counts Section -->


	<!-- ======= Team Section ======= -->
	<section id="team" class="team">
		<div class="container" data-aos="fade-up">

			<div class="section-title">
				<h2>Team</h2>
				<p>Check our Team</p>
			</div>

			<div class="row">

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
					<div class="member" data-aos="fade-up" data-aos-delay="100">
						<div class="member-img">
							<img src="../../resources/assets/img/team/team-1.jpg" class="img-fluid" alt="">
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a>
								<a href=""><i class="bi bi-facebook"></i></a>
								<a href=""><i class="bi bi-instagram"></i></a>
								<a href=""><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>권보경</h4>
							<span>강아지 담당 수의사</span>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
					<div class="member" data-aos="fade-up" data-aos-delay="200">
						<div class="member-img">
							<img src="../../resources/assets/img/team/team-2.jpg" class="img-fluid" alt="">
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a>
								<a href=""><i class="bi bi-facebook"></i></a>
								<a href=""><i class="bi bi-instagram"></i></a>
								<a href=""><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>최윤경</h4>
							<span>고양이 담당 수의사</span>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
					<div class="member" data-aos="fade-up" data-aos-delay="300">
						<div class="member-img">
							<img src="../../resources/assets/img/team/team-3.jpg" class="img-fluid" alt="">
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a>
								<a href=""><i class="bi bi-facebook"></i></a>
								<a href=""><i class="bi bi-instagram"></i></a>
								<a href=""><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>김효진</h4>
							<span>보험 설계사</span>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
					<div class="member" data-aos="fade-up" data-aos-delay="400">
						<div class="member-img">
							<img src="../../resources/assets/img/team/team-4.jpg" class="img-fluid" alt="">
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a>
								<a href=""><i class="bi bi-facebook"></i></a>
								<a href=""><i class="bi bi-instagram"></i></a>
								<a href=""><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
						<div class="member-info">
							<h4>이승희</h4>
							<span>보험 설계사</span>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section><!-- End Team Section -->

	<!-- ======= Contact Section ======= -->
	<section id="contact" class="contact">
		<div class="container" data-aos="fade-up">

			<div class="section-title">
				<h2>Contact</h2>
				<p>Contact Us</p>
			</div>

			<div>
				<iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.18226568503!2d127.04371367563643!3d37.5036191220549!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca512b1b5e77b%3A0x90048774d24a2a4f!2z66mA7Yuw7Lqg7Y287IqkIOyEoOumiQ!5e0!3m2!1sko!2skr!4v1684384609730!5m2!1sko!2skr" frameborder="0" allowfullscreen></iframe>
			</div>

			<div class="row mt-5">

				<div class="col-lg-4">
					<div class="info">
						<div class="address">
							<i class="bi bi-geo-alt"></i>
							<h4>위치:</h4>
							<p>서울특별시 강남구 대치동 889-41</p>
						</div>

						<div class="email">
							<i class="bi bi-envelope"></i>
							<h4>이메일:</h4>
							<p>admin@petandmet.com</p>
						</div>

						<div class="phone">
							<i class="bi bi-phone"></i>
							<h4>전화번호:</h4>
							<p>+82 10-9999-1234</p>
						</div>

					</div>

				</div>

				<div class="col-lg-8 mt-5 mt-lg-0">

					<form action="forms/contact.php" method="post" role="form" class="php-email-form">
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name" placeholder="이름" required>
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="email" class="form-control" name="email" id="email" placeholder="이메일" required>
							</div>
						</div>
						<div class="form-group mt-3">
							<input type="text" class="form-control" name="subject" id="subject" placeholder="제목" required>
						</div>
						<div class="form-group mt-3">
							<textarea class="form-control" name="message" rows="5" placeholder="내용" required></textarea>
						</div>
						<div class="my-3">
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">Your message has been sent. Thank you!</div>
						</div>
						<div class="text-center"><button type="submit">전송</button></div>
					</form>

				</div>

			</div>

		</div>
	</section><!-- End Contact Section -->

</main><!-- End #main -->

<footer id="footer" include-html="footer.html"></footer>

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