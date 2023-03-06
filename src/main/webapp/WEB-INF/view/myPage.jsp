<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>방탈출카페 - 마이페이지</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/static/css/bootstrap.min.css">
    <!--For Plugins external css-->
    <link rel="stylesheet" href="resources/static/css/plugins.css" />
    <link rel="stylesheet" href="resources/static/css/login.css">
    <!--Theme custom css -->
    <link rel="stylesheet" href="resources/static/css/style.css">
    <link rel="stylesheet" href="resources/static/css/myPage.css">
    <!--Theme Responsive css-->
    <link rel="stylesheet" href="resources/static/css/responsive.css" />
    <script src="resources/static/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <link href="resources/static/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/static/css/mypage.css">
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
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </header>
    <section id="our-history" class="sections">
      <div class="container">
          <div class="row">
              <div class="main-history">
                  <div class="col-md-6 col-sm-12 col-xs-12">
                      <div class="history-wrapper">
                          <div class="history-heading"> 
                              <h5 class="our-history">마이페이지</h5>
                          </div>
                          <div class="history-content cf">
                              <ul class="tab-content-left">
                                <li class="tab-link current" data-tab="tab-1" style="cursor:pointer">문의내역</li>
                                <li class="tab-link" data-tab="tab-2" style="cursor:pointer">계정정보변경</li>
<%--                                <li class="tab-link" data-tab="tab-3" style="cursor:pointer">회원탈퇴</li>--%>
                              </ul>
                              <div class="tab-content-right">
                                <div id="tab-1" class="tab-content current" >
                                      문의내역 내용
                                </div>
                                <div id="tab-2" class="tab-content">
                                    <p>name : ${user.name}</p>
                                    <p>email : ${user.email}</p>
                                    <p>전화번호 : ${user.phone1}-${user.phone2}-${user.phone3}</p>
                                    <ul>
                                        <li>
                                            <button type="button" onclick="location.href='update'">수정하기</button>
                                        </li>
                                        <li>
                                            <form action="/delete" method="post">
                                                <button type="submit">탈퇴하기</button>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                                <div id="tab-3" class="tab-content">
                                    회원탈퇴 내용
                                </div>
                             </div>
                          </div>
                        </div>
                      </div>
                  </div>
              </div>
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
    <script src="resources/static/js/myPage.js"></script>
</body>
</html>