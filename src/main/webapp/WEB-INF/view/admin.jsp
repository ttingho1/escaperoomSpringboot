<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>방탈출카페-어드민페이지</title>
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
<style>
    table {
        margin-top: 300px;
    }
</style>
<body data-spy="scroll" data-target="#main-navbar">
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
                    <li>어드민 페이지</li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>
<h2>User List</h2>
<table>
    <tr>
        <th>index</th>
        <th>password</th>
        <th>pwconfirm</th>
        <th>name</th>
        <th>phone1</th>
        <th>phone2</th>
        <th>phone3</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.index}</td>
            <td>${u.password}</td>
            <td>${u.pwconfirm}</td>
            <td>${u.name}</td>
            <td>${u.phone1}</td>
            <td>${u.phone2}</td>
            <td>${u.phone3}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>