<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
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
        th, td {
            border: 1px solid #4444444f;
        }
    </style>
</head>

<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-inner-pages"
        include-html="../../resources/assets/html/navbar2.html"></header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>마이 펫 추가</h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li>마이 펫 추가</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->
    <section class="inner-page">
        <div class="container pet" style="text-align:center; ">
            <form method="post" action="/mypetpage/mypetregister">
                <table style="margin:0 auto">
                    <tr>
                        <td class="thead">등록번호</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td class="thead">반려동물 종류</td>
                        <td>
                            <input type="radio" name="pet_type" value="고양이" id="catRadio">
                            <label for="catRadio">고양이</label>
                            <input type="radio" name="pet_type" value="강아지" id="dogRadio">
                            <label for="dogRadio">강아지</label>
                            <div id="breedSelection">
                                <select name="breedSelect" id="breedSelect"></select>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td class="thead">이름</td>
                        <td>
                            <label><input type="text" name="name"></label><br>

                        </td>
                    </tr>
                    <tr>
                        <td class="thead">생년월일</td>
                        <td>
                            <label> <input type="date" name="birth"></label><br>

                        </td>
                    </tr>
                    <tr>
                        <td class="thead">몸무게</td>
                        <td>
                            <label> <input type="number" name="weight"></label>kg
                        </td>
                    </tr>
                    <tr>
                        <td class="thead">성별</td>
                        <td>
                            <label>
                                <input type="radio" name="gender" value="수컷" id="male">수컷
                                <input type="radio" name="gender" value="암컷" id="female">암컷
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="thead">중성화 여부</td>
                        <td>
                            <label>
                                <input type="radio" name="isNeutered" value="true" id="neutered"> O
                                <input type="radio" name="isNeutered" value="false" id="no_neutered"> X
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="thead">슬개골, 탈구질환 여부</td>
                        <td>
                            <label>
                                <input type="radio" name="patella" value="true" id="patella"> O
                                <input type="radio" name="patella" value="false" id="no_patella"> X
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="thead">구강질환 여부</td>
                        <td>
                            <label>
                                <input type="radio" name="tooth" value="true" id="tooth"> O
                                <input type="radio" name="tooth" value="false" id="no_tooth"> X
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="thead">피부질환 여부</td>
                        <td>
                            <label>
                                <input type="radio" name="skin" value="true" id="skin"> O
                                <input type="radio" name="skin" value="false" id="no_skin"> X
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="thead">스켈링 여부</td>
                        <td>
                            <label>
                                <input type="radio" name="scaling" value="true" id="scaling"> O
                                <input type="radio" name="scaling" value="false" id="no_scaling"> X
                            </label>
                        </td>
                    </tr>
                </table>
                <br>
                <input type="submit" value="마이 펫 추가">
            </form>

            <script>
                const catBreeds = ['기타/해당없음/믹스고양이', '네벨룽', '노르웨이숲', '네바마스커레이드', '데본렉스', '돈스코이', '라가머핀', '라이코이', '라팜(라펌)', '라팜(라펌)숏헤어', '랙돌(래그돌)', '맹크스', '먼치킨', '먼치킨롱헤어', '메인쿤', '메인쿤폴리델틱', '미뉴에트', '샴', '페르시안', '러시안 블루', '스노우슈', '스코티쉬스트레이트', '스코티쉬폴드', '스핑크스', '시베리안', '시베리안숲', '싱가푸라', '씸릭(킴릭)', '아메리칸밥테일', '아메리칸와이어헤어', '아메리칸컬', '아비시니안', '엑조틱숏헤어', '오리엔탈숏헤어', '오리엔탈롱헤어', '오스트레일리안미스트', '오시캣', '쿠릴리안밥테일', '쿠릴리안밥테일롱헤어', '타이캣', '터키쉬반', '터키쉬앙고라', '토이거', '통키니즈', '티파니'];
                const dogBreeds = ['기타A/믹스견 (5kg 이하)', '기타B/믹스견 (5kg ~ 12kg)', '노리치테리어', '노르포크테리어', '말티즈', '래브라도 리트리버', '불독', '시바견', '닥스훈트', '보더콜리', '댄디딘몬테리어', '라사압소', '레이크랜드테리어', '미니어처닥스훈트', '미니어처볼테리어', '미니어처슈나우저', '미니어처푸들', '미니어처핀셔', '바센지', '베들링턴테리어', '보스턴테리어', '볼로그네제', '비글', '비숑프리제', '셔틀랜드쉽독', '스코티시테리어', '스코티쉬폴드', '스핑크스', '시베리안', '시베리안숲', '싱가푸라', '씸릭(킴릭)', '아메리칸밥테일', '아메리칸와이어헤어', '아메리칸컬', '아비시니안', '엑조틱숏헤어', '오리엔탈숏헤어', '오리엔탈롱헤어', '오스트레일리안미스트', '오시캣', '쿠릴리안밥테일', '쿠릴리안밥테일롱헤어', '타이캣', '터키쉬반', '터키쉬앙고라', '토이거', '통키니즈', '티파니'];

                const catRadio = document.getElementById('catRadio');
                const dogRadio = document.getElementById('dogRadio');
                const breedSelection = document.getElementById('breedSelection');
                const breedSelect = document.getElementById('breedSelect');

                catRadio.addEventListener('change', function () {
                    if (catRadio.checked) {
                        populateBreeds(catBreeds);
                        breedSelection.style.display = 'block';
                    }
                });

                dogRadio.addEventListener('change', function () {
                    if (dogRadio.checked) {
                        populateBreeds(dogBreeds);
                        breedSelection.style.display = 'block';
                    }
                });

                function populateBreeds(breeds) {
                    breedSelect.innerHTML = '';
                    for (let i = 0; i < breeds.length; i++) {
                        const option = document.createElement('option');
                        option.value = breeds[i];
                        option.text = breeds[i];
                        breedSelect.appendChild(option);
                    }
                }
            </script>
        </div>
    </section>


</main><!-- End #main -->


<footer id="footer" include-html="../../resources/assets/html/footer.html"></footer>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

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