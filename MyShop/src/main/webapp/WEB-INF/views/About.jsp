<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>

		<link rel="shortcut icon" href="bootstrap/img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon">

		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="bootstrap/css/custom-style.css" rel="stylesheet" type="text/css" />
		<link href="bootstrap/css/navbar.css" rel="stylesheet" type="text/css" />
		<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">

		<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>


	<title>About us | Myshop.in</title>
	<style>
			.row small{
				color: #afafaf;
			}
		</style>
</head>
<body>

    <%@ include file="Header.jsp" %>
    <div class="container" style="margin-top:80px;">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">About Us
                    <small>It's Nice to Meet You!</small>
                </h1>
                <div class="col-lg-6" style="height:180px;">
                    <div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, explicabo dolores ipsam aliquam inventore corrupti eveniet quisquam quod totam laudantium repudiandae obcaecati ea consectetur debitis velit facere nisi expedita vel?</p>
                    </div>
                    <a class="btn btn-lg btn-primary" href="Products?val=all" role="button">Shop Noww &raquo;</a>
                </div>
                <div class="col-lg-6" style="height:50px;">
                    <img class="img" src="bootstrap/img/Layer 0.png" style="position:relative; bottom:150px; float:right;" alt="PhotographerGirl"></div>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="title">Our Story
                        <small>How we began!</small>
                    </h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, explicabo dolores ipsam aliquam inventore corrupti eveniet quisquam quod totam laudantium repudiandae obcaecati ea consectetur debitis velit facere nisi expedita vel?</p>
                    <p>Phasellus pellentesque bibendum ligula nec mollis. Morbi pretium mauris sit amet ex ultricies, eu interdum magna scelerisque. Donec sit amet ipsum et ipsum posuere iaculis ac a sem. Morbi pharetra, purus eget faucibus sodales, nibh tellus rhoncus
                        magna, vel mollis turpis ex eu elit. Nam vel sem orci. Curabitur lacinia ultrices est, vel pellentesque ex luctus in. Aliquam risus sapien, ornare ut augue sit amet, iaculis consectetur nibh. Nam et mauris id diam sagittis sodales eu fringilla eros.
                        Donec quis rutrum ipsum. Nullam fermentum efficitur risus, commodo pretium magna volutpat at. Maecenas eget augue facilisis, maximus libero viverra, ultricies urna.</p>
                    <div class="pull-center">
                        <img class="img" src="bootstrap/img/ZenFone.png" style="margin-left:225px;" alt="Visionary"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <h2 class="title">Mission
                            <small>Commerce</small>
                        </h2>
                        <hr>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus nibh a convallis aliquam. Mauris eros nisl, maximus ac blandit a, finibus et ex. Donec et vehicula tellus. In ac libero pellentesque magna pulvinar pharetra. Ut pulvinar
                                molestie ligula, id facilisis augue efficitur eu. Phasellus cursus ipsum at dolor egestas.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas venenatis eros id nibh auctor, a tempor dui ornare.</p>
                        </div>
                        <div class="col-lg-6">
                            <h2 class="title">Vision
                                <small>Completeness</small>
                            </h2>
                            <hr>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas venenatis eros id nibh auctor, a tempor dui ornare. Nam aliquet dui elementum varius faucibus. Ut vehicula turpis id massa aliquam</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus nibh a convallis aliquam. Mauris eros nisl, maximus ac blandit a, finibus et ex. Donec et vehicula tellus. In ac libero pellentesque magna pulvinar pharetra. Ut pulvinar
                                    molestie ligula, id facilisis augue efficitur eu.</p>
                            </div>
                        </div>
                    </div>
                    <%@ include file="Footer.jsp" %>
                </body>
            </html>
