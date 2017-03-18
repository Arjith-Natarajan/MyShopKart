
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
	<head>

		<link rel="shortcut icon" href="bootstrap/img/favicon.ico" type="image/x-icon"/>
		<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon"/>

		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="bootstrap/css/custom-style.css" rel="stylesheet" type="text/css"/>
		<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet"/>

		<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>

		<title>Footer</title>

		<style media="screen">
			.bottom-rule {
				border-bottom: 1px solid lightgray;
			}

			footer {
				padding-top: 20px;
				border-top: 10px solid #332e20;
				background-color: white;
			}
			.footer-section {
				margin-bottom: 20px;
				padding-bottom: 20px;
				border-bottom: 1px solid lightgray;
			}
			@media (min-width: 768px) {
				.footer-section {
					margin-bottom: 0;
					padding-bottom: 0;
					border-bottom: none;
				}
			}
			footer .list-inline li:not(:first-child):not(:last-child) {
				border-right: 1px solid lightgray;
			}
			.navbar-footer {
				background-color: inherit;
				border-radius: 0;
				border: none;
			}
			.navbar-footer {
				margin-bottom: 0;
				text-align: center;
			}
			footer .navbar .navbar-nav {
				display: inline-block;
				float: none;
				vertical-align: top;
			}
			.leg-room {
				margin-bottom: 20px;
				padding-bottom: 20px;
			}
		</style>
	</head>
	<body>

		<footer class="footer navbar-default">
			<div class="container">
					<div class="row bottom-rule">
    <div class="col-sm-12">
        <nav class="navbar navbar-default navbar-footer">
            <ul class="nav navbar-nav">
            	<li><a href="Products?val=all">Shop more</a></li>
                <li><a href="#">Customer Care</a></li>
                <li><a href="#">Gift Cards</a></li>
                <li><a href="About">About MyShop.in Store</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="Contact">Contact Us</a></li>
            </ul>
        </nav>
    </div>
</div><!-- end row -->
					<div class="row leg-room">
						<div class="col-md-12 text-center">
							<h1 class="text-uppercase">MyShop Store</h1>
							<p class="monospaced">
								&copy;2016 MyShop.in Daymonyr Inc.
								<span class="text-uppercase">All Rights Reserved</span>
							</p>
						</div>
					</div>
					<!-- end row -->
				</div>
				<!-- End of container-->
			</footer>

		</body>
	</html>
