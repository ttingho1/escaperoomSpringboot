<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방탈출카페 - 로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/static/css/bootstrap.min.css">
    <!--For Plugins external css-->
    <link rel="stylesheet" href="resources/static/css/plugins.css" />
    <link rel="stylesheet" href="resources/static/css/login.css">
    <!--Theme custom css -->
    <link rel="stylesheet" href="resources/static/css/style.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="resources/static/css/responsive.css" />
    <script src="resources/static/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <link href="resources/static/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="resources/static/js/user.js"></script>
</head>
<body data-spy="scroll" data-target="#main-navbar">
    <header>
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
                            <li><a href="login">로그인</a></li>
                            <li><a href="mypage">마이페이지</a></li>
                            <li><a href="theme">테마</a></li>
                            <li><a href="reservation">예약하기</a></li>
                            <li><a href="reservation_qna">예약문의</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </header>
    <section>
        <div class="loginbox">
            <form action="/login" method="post">
              <div class="title">로그인</div>
              <div class="input-box underline">
                <input type="text" name="email" placeholder="Enter Your Email" required>
                <div class="underline"></div>
              </div>
              <div class="input-box">
                <input type="password" name="password" placeholder="Enter Your Password" required>
                <div class="underline"></div>
              </div>
              <div class="find">
                <ul class="cf">
                    <li><a href="idFind">아이디찾기</a></li>
                    <li><a href="pwFind">비밀번호찾기</a></li>
                </ul>
              </div>
             <button type="submit" class="input-box button">로그인</button>
            </form>
            <div class="text">
                <p>아직 회원이 아니신가요?</p>
                <p><a href="signup">회원가입</a></p>
            </div>
            <div class="kakao_login">
              <a href="#"><img src="resources/static/images/kakao_login.png" alt="카카오로그인"></a>
            </div>
          </div>

    </section>



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