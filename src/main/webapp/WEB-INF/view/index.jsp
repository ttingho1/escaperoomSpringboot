<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html class="no-js" lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>방탈출카페</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/static/css/bootstrap.min.css">
    <!--For Plugins external css-->
    <link rel="stylesheet" href="resources/static/css/plugins.css">
    <!--Theme custom css -->
    <link rel="stylesheet" href="resources/static/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="resources/static/css/responsive.css">
    <script src="resources/static/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target="#main-navbar">
<div class='preloader'><div class='loaded'>&nbsp;</div></div>
<div id="menubar" class="main-menu">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><img src="resources/static/images/logo.png" alt="" /></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${sessionScope.email ne null}">
                        <li><a href="logout">로그아웃</a></li>
                        <li><a href="myPage">마이페이지</a></li>
                        <li><a href="theme">테마</a></li>
                        <li><a href="reservation">예약하기</a></li>
                        <li><a href="reservationQna">예약문의</a></li>
                    </c:if>
                    <c:if test="${sessionScope.email eq null}">
                        <li><a href="login">로그인</a></li>
                        <li><a href="myPage">마이페이지</a></li>
                        <li><a href="theme">테마</a></li>
                        <li><a href="reservation">예약하기</a></li>
                        <li><a href="reservationQna">예약문의</a></li>
                    </c:if>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>
<!--Home page style-->
<header id="home" class="sections">
    <div class="container">
        <div class="row">
            <div class="homepage-style">
                <div class="top-arrow hidden-xs text-center"><img src="resources/static/images/top-arrow.png" alt="" /></div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="unique-apps">
                        <h2>문이 닫힌 순간부터<br>시작되는 특별한 경험!</h2>
                        <p>
                            이야기의 주인공이 되어 방에서 탈출하세요!<br>
                            다양한 테마로 초등학생부터 성인까지! <br>
                            친구와 함께, 연인과 함께하는 추리게임!
                        </p>
                        <div class="home-btn"><button class="btn btn-primary"><a href="reservation" class="index_reservation">예약하기</a> <span><i class="fa fa-paper-plane"></i></span></button></div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="slider-area">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="resources/static/images/1_a.jpg" alt="" />
                                </div>
                                <div class="item">
                                    <img src="resources/static/images/2_a.JPG" alt="" />
                                </div>
                                <div class="item">
                                    <img src="resources/static/images/3_a.JPG" alt="" />
                                </div>
                                <div class="item">
                                    <img src="resources/static/images/4_a.JPG" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Sections -->
<section id="our-portfolio" class="sections">
    <div class="container">
        <div class="row">
            <div class="heading">
                <div class="title text-center arrow-right">
                    <h4 class=""> Theme </h4>
                    <img class="hidden-xs" src="resources/static/images/right-arrow.png" alt="" />
                </div>
            </div>
            <!-- Example row of columns -->
            <div class="portfolio-wrap">
                <div class="portfolio">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <img src="resources/static/images/info_1.jpg" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="portfolio-item">
                            <h4>나의계획은</h4>
                            <p>
                            <h4>미안하지만, 네가 비켜줘야겠어!</h4><br>
                            보석가에서 판매사원으로 힘들게 살고 있는 당신,<br>
                            손님으로 온 여고 동창을 우연히 만나,<br>
                            그녀의 모든것을 부러워하며 질투하게 되었다.<br>
                            그녀의 재력과 자상한 남편까지 빼앗는다면<br>
                            그녀의 인생을 차지하며 우아하게 살수있다 생각한다.<br>
                            </p>
                            <a href="reservation"><button class="btn pt-btn btn-primary">예약하기</button></a>
                        </div>
                    </div>
                </div>
                <div class="portfolio">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="portfolio-item">
                            <h4>왜 그들은 죽음을 선택하는가?</h4>
                            <p>
                                가까운 미래, 본격적인 고령화 사회에 접어들면서,<br>
                                홀로 사는 노인의 고독사 문제가 커다란 사회적 이슈로 떠오르기 시작했다.<br>
                                어느날 실버센터에서 노인들의 집단 자살 사건까지 발생하는데,<br>
                                인기탐사 프로그램 PD인 나는 취재 도중 이상한 점을 한가지 발견하게된다.<br>
                            </p>
                            <a href="reservation"><button class="btn pt-btn btn-primary">예약하기</button></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <img class="portfolio-img img-responsive" src="resources/static/images/info_2.jpg" alt="" />
                    </div>
                </div>
                <div class="portfolio">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <img class="portfolio-img img-responsive" src="resources/static/images/info_3.jpg" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="portfolio-item">
                            <h4>넌 나에게 모욕감을 줬어!</h4>
                            <p>
                                나는 100만 구독자를 보유한 인기 먹방 유튜버!<br>
                                오늘의 먹방은 우리 동네 골목맛집이다.<br>
                                라이브도 하면서 음식값은 협찬 받아서 제작비를 아껴보려고한다.<br>
                                그런데 이 식당 무언가 수상하다!!<br>
                                게다가 나를 몰라본다고??<br>
                            </p>
                            <a href="reservation"><button class="btn pt-btn btn-primary">예약하기</button></a>
                        </div>
                    </div>
                </div>
                <div class="portfolio">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="portfolio-item">
                            <h4>
                                별을 다세어도 잠이 오지않을때,<br>
                                스테이시, 재즈를 틀어줘
                            </h4>
                            <p>
                                하나 둘 셋, 또 하나 둘 셋<br>
                                하 미치겠다. 별들아.. 아무리 쳐다봐도 니가 보이질 않아 스테이시!<br>
                                두 눈에 가득 고인 눈물 때문에 다 너 때문에<br>
                                번져진 글자 위로 비친.....<br>
                            </p>
                            <a href="reservation"><button class="btn pt-btn btn-primary">예약하기</button></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <img class="portfolio-img img-responsive" src="resources/static/images/info_4.jpg" alt="" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /container -->
</section>
<section id="our-team" class="sections">
    <div class="container">
        <div class="heading">
            <div class="title text-center arrow-left">
                <img class="hidden-xs" src="resources/static/images/left-arrow.png" alt="" />
                <h4 class="">주의사항</h4>
            </div>
        </div>
    </div>
    <div class="container-fluid project-bg">
        <div class="row">
            <div class="main-team text-center">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-member">
                        <img class="img-circle" src="resources/static/images/ban_1.png" alt="" />
                        <h5>10분전 도착하기</h5>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-member">
                        <img class="img-circle" src="resources/static/images/ban_2.png" alt="" />
                        <h5>누설금지</h5>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-member">
                        <img class="img-circle" src="resources/static/images/ban_3.png" alt="" />
                        <h5>사진촬영금지</h5>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-member">
                        <img class="img-circle" src="resources/static/images/ban_4.png" alt="" />
                        <h5>위험물품금지</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="hire-us" class="sections">
    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="hire-content">
                    <div class="img-overlay">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25287.931118151333!2d127.00463645135174!3d37.602361660456914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbc914445e619%3A0x6c9b1237a957b524!2z7ISc7Jq47Yq567OE7IucIOyEseu2geq1rA!5e0!3m2!1sko!2skr!4v1675009255331!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        <div class="creative-works">
                            <h3>오시는길</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- /container -->
</section>
<!-- 스크롤바 -->
<div class="scroll-top">
    <div class="scrollup">
        <i class="fa fa-angle-double-up"></i>
    </div>
</div>
<!-- /스크롤바 -->
<!--Footer-->
<footer id="footer" class="footer">
    <div class="container">
        <div class="row">
            <div class="main-footer">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="footer-item">
                        <h2>UNIQUE TECH</h2>
                        <ul>
                            <li>(010222)</li>
                            <li>서울시 성북구 안암동</li>
                            <li>Email : ttingho1@naver.com</li>
                            <li>Phone : 010 - 7466 - 1633</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- /Footer -->
<script src="resources/static/js/vendor/jquery-1.11.2.min.js"></script>
<script src="resources/static/js/vendor/bootstrap.min.js"></script>
<script src="resources/static/js/plugins.js"></script>
<script src="resources/static/js/main.js"></script>
</body>
</html>
