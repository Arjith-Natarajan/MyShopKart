<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>

<title>MyShop.in | Electronics World</title>

		<link rel="shortcut icon" href="bootstrap/img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/custom-style.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/landing.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="Header.jsp" %>
<section class="section-white">
    <div class=" container container-carousel">

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="bootstrap/img/retrocameras.jpg" alt="...">
                        <!--div class="carousel-caption">
            <h2>Cool Cameras</h2>
          </div-->
                    </div>
                    <div class="item">
                        <img src="bootstrap/img/iphone.png" alt="...">
                            <!--div class="carousel-caption">
            <h2>Awesome Headphones</h2>
          </div-->
                        </div>
                        <div class="item">
                            <img src="bootstrap/img/watches.jpg" alt="...">
                                <!--div class="carousel-caption">
            <h2>Awesome Headphones</h2>
          </div-->
                            </div>
                            <div class="item">
                                <img src="bootstrap/img/samsung.png" alt="...">
                                    <!--div class="carousel-caption">
            <h2>Fancy Phones</h2>
          </div-->
                                </div>
                                <div class="item">
                                    <img src="bootstrap/img/tempered.jpg" alt="...">
                                        <!--div class="carousel-caption">
            <h2>Heading</h2>
          </div-->
                                    </div>
                                    <div class="item">
                                        <img src="bootstrap/img/Diesel.png" alt="...">
                                            <!--div class="carousel-caption">
            <h2>Memory cards</h2>
          </div-->
                                        </div>
                                    </div>

                                    <!-- Controls -->
                                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </a>
                                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </a>
                                </div>

                            </div>
                        </section>
                        <section>
                            <div class="container">
                                <hr/>
                                <div class="row">
                                    <div class="col-sm-4 col-md-3">
                                        <h3>Categories</h3>
                                        <div class="list-group">
                                            <a href="Products?val=acs" class="list-group-item">Accessories</a>
                                            <a href="Products?val=cam" class="list-group-item">Cameras</a>
                                            <a href="Products?val=phn" class="list-group-item">SmartPhones</a>
                                            <a href="Products?val=usb" class="list-group-item">Memory sticks</a>
                                            <a href="Products?val=wtch" class="list-group-item">Watches</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.container class with content as the id-->
                        </section>

                        <%@ include file="Footer.jsp" %>
</body>
</html>
