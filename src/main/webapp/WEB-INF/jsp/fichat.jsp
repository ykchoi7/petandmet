<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
<%--    <link href="/main.css" rel="stylesheet">--%>

    <link href="/webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>
    <script src="/fichat.js"></script>
    <!-- html 분리 위함 -->
    <script src="../../resources/assets/js/includeHTML.js"></script>

    <style>
        body {
            background-color: #f5f5f5;
        }

        #main-content {
            max-width: 60%;
            min-width: 50px;
            height: 60%;
            padding: 2em 3em;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }
        #conversation {
            height : 80%;
            width: 100%;
            background-color:#f1f1f1;
        }
    </style>
</head>
<body>
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header><!-- End Header -->

<div>
    <link href="/chat.css" rel="stylesheet">
<%--    <header class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar.html"></header>--%>
        <div class="chat1-container02">
            <div class="chat1-container03">
                <div class="chat1-container04">
                    <img
                            alt="image"
                            src="../../resources/assets/img/team/financedog.PNG"
                            class="chat1-image2"
                    />
                    <span class="chat1-text">금융상담원 김국민</span>
                </div>
                    <div id="conversation">
                    <ul class="chat1-ul list" id="communicate">
<%--                        <li class="chat1-li1 list-item">--%>
<%--                            <span class="chat1-text01">Text</span>--%>
<%--                        </li>--%>
<%--                        <li class="chat1-li2 list-item">--%>
<%--                            <span class="chat1-text02">Text</span>--%>
<%--                        </li>--%>
                    </ul>
                </div>
                <div class="chat1-container06">
                    <img
                            alt="image"
                            src="https://play.teleporthq.io/static/svg/default-img.svg"
                            class="chat1-image3"
                    />
                    <input
                            type="text"
                            id="msg"
                            placeholder="내용을 입력하세요..."
                            class="chat1-textinput input"
                    />
                    <button id="send" class="chat1-button" disabled type="submit">보내기</button>

                </div>
            </div>
            <div class="chat1-container07">
                <img
                        alt="image"
                        src="../../resources/assets/img/team/financedog.PNG"
                        class="chat1-image4"
                />
                <span class="chat1-text03">김국민</span>
                <span class="chat1-text04">**지점 금융상담원</span>
                <div class="chat1-container08">
                    <div class="chat1-container09">
                        <div class="chat1-container10">
              <span class="chat1-text05">
                <span>안녕하세요.</span>
                <br />
                <span>어쩌구저쩌구</span>
                <br />
              </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<%--    </header>--%>
</div>

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