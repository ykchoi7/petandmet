<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- =======================================================
    * Template Name: Gp
    * Updated: Mar 10 2023 with Bootstrap v5.2.3
    * Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <style>
        th,td{
            border: 1px solid #4444444f;
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

    </style>
</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>마이 펫 페이지</h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li>마이 펫 페이지</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->
    <section class="inner-page" >
        <div class="container pet" style="text-align:center; ">
            <div class="box" style="vertical-align:middle; line-height: 75px; white-space:nowrap;">

            <h3 for="petSelect" style="display:inline; margin-top: 2rem;">마이 펫 선택 </h3>

            <select id="petSelect">
                <c:forEach items="${pets}" var="pet">
                    <option value="${pet.no}">${pet.name}</option>
                </c:forEach>
            </select></div>

            <div style = "margin: 0 auto; ">
                <table style = "margin: 0 auto;" id="msg1"></table><br>
                <table style = "margin: 0 auto;" id="msg"></table>
            </div>
<br>
            <script type="text/javascript">
                window.onload = function () {
                    var petSelect = document.querySelector('#petSelect')
                    var no = petSelect.value;

                    function handleSelectedOption(e) {
                        no = petSelect.value;
                        ajax(no)
                        console.log(no);
                    }
                    function ajax(no){
                        var options = {
                            url : 'mypetpage',
                            type : 'POST',
                            data : {
                                no: no
                        },
                        success: function(data){
                            var msg = $('#msg')
                            var msg1 = $('#msg1')
                            msg.html('')
                            msg1.html('')
                            msg1.append('<tr>')
                            msg1.append('<img src = "'+data.pet_image+'" style ="width:150px;height:150px"><br></tr>')
                            msg.append('<tr><td class = "thead">이름</td><td id = "name">'+data.name+'</td></tr>')
                            msg.append('<tr><td class = "thead">동물 종류</td><td id = "pet_type">'+data.pet_type+'</td></tr>')
                            msg.append('<tr><td class = "thead">품종</td><td id = "breed">'+data.breed+'</td></tr>')
                            msg.append('<tr><td class = "thead">등록번호</td><td id = "id">'+data.id+'</td></tr>')
                            msg.append('<tr><td class = "thead">생년월일</td><td id = "birth">'+data.birth+'</td></tr>')
                            msg.append('<tr><td class = "thead">성별</td><td id = "gender">'+data.gender+'</td></tr>')
                            msg.append('<tr><td class = "thead">몸무게</td><td>'+data.weight+'</td></tr>')
                            console.log(data)
                            if(data.neutered == true){
                                msg.append('<tr><td class = "thead">슬개골, 탈구질환 여부</td><td id = "patella"> O </td></tr>')
                            }else{
                                msg.append('<tr><td class = "thead">슬개골, 탈구질환 여부</td><td id = "patella"> X </td></tr>')
                            }
                            if(data.tooth == true){
                                msg.append('<tr><td class = "thead">구강질환 여부</td><td id = "tooth"> O </td></tr>')
                            }else{
                                msg.append('<tr><td class = "thead">구강질환 여부</td><td id = "tooth"> X </td></tr>')
                            }
                            if(data.skin == true){
                                msg.append('<tr><td class = "thead">피부질환 여부</td><td id = "skin"> O </td></tr>')
                            }else{
                                msg.append('<tr><td class = "thead">피부질환 여부</td><td id = "skin"> X </td></tr>')
                            }
                            if(data.scaling == true){
                                msg.append('<tr><td class = "thead">스케일링 여부</td><td id = "scaling"> O </td></tr>')
                            }else{
                                msg.append('<tr><td class = "thead">스케일링 여부</td><td id = "scaling"> X </td></tr>')
                            }
                        },
                            error:function(){
                            }
                        }
                        $.ajax(options)
                    }
                    petSelect.onchange = handleSelectedOption;
                    handleSelectedOption();
                }
            </script>
    <button class="get-started-btn scrollto">마이펫 정보 수정 </button>
    <button class="get-started-btn scrollto" onclick="location.href = 'mypetpage/mypetregister'">마이펫 추가 </button>
    <button class="get-started-btn scrollto">마이펫 삭제 </button>
            <br>
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