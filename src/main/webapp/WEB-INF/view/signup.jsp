<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방탈출카페 - 회원가입</title>
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
    <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/static/css/signup.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
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
                        <li><a href="myPage">마이페이지</a></li>
                        <li><a href="theme">테마</a></li>
                        <li><a href="reservation">예약하기</a></li>
                        <li><a href="reservationQna">예약문의</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</header>
<section>
    <div class="heading">
        <div class="title text-center arrow-left">
            <img class="hidden-xs" src="resources/static/images/left-arrow.png" alt="" />
            <h4 class="">회원가입</h4>
        </div>
    </div>
</section>
<form class="w960 sigunup_form" action="/signup" method="post">
    <div class="mb-3 id">
        <label class="form-label">이메일</label>
        <div class="id_check">
            <input type="text" class="form-control" id="userid" name="email">
            <button type="submit" class="btn btn-primary double_check">중복확인</button>
        </div>
    </div>
    <div class="mb-3">
        <label class="form-label">비밀번호</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>
    <div class="mb-3">
        <label class="form-label">비밀번호 확인</label>
        <input type="password" class="form-control" name="pwconfirm">
    </div>
    <div class="mb-3">
        <label class="form-label">이름</label>
        <input type="text" class="form-control" id="username" name="name">
    </div>
    <div class="mb-3">
        <label class="form-label">전화번호</label>
        <div class="phone">
            <input type="text" class="form-control" name="phone1">
            <input type="text" class="form-control" name="phone2">
            <input type="text" class="form-control" name="phone3">
        </div>
    </div>
<%--
    <label class="form-label">주소</label>
    <div class="postcode">
        <div class="postcode_find">
            <input type="text" id="sample6_postcode">
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
        </div>
        <div class="postcode_addr">
            <input type="text" id="sample6_address" placeholder="주소"><br>
            <input type="text" id="sample6_detailAddress" placeholder="상세주소를 입력해주세요">
        </div>
    </div>
--%>
    <button type="submit" class="btn btn-primary signup_button" id="btn-save">가입하기</button>
</form>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="resources/static/js/signup.js"></script>
<script src="resources/static/js/user.js"></script>
</body>
</html>