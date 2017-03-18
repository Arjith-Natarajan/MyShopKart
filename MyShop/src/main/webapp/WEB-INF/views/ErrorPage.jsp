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
		<link href="bootstrap/css/error.css" rel="stylesheet" type="text/css" />
		<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">

		<script src="bootstrap/js/jquery-3.0.0.js" type="text/javascript"></script>
		<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

		<title>Oops! | MyShop.in</title>
</head>
<body>
<div id="home">
	<div id="overlay">
		<section id="page-content" class="text-center">
			<div class="container">
				<div class="row">
					<p class="alert-icon">
						<i class="fa fa-exclamation-triangle"></i>
					</p>
					<img alt="broken camera" class="ing-responsive" height="200" src="bootstrap/img/noc.png">
						<h1 class="error-title">
							<small>error</small>
							404</h1>
						<h3 class="sub-title white">Page Not Found!</h3>
						<p class="page-par white">Looks like you have hit a broken link! Can't view this page.</p>
						<form action="" class="form-inline search-page">
							<div class="form-group">
								<input type="text" placeholder="Search our site" class="form-control width-fix"></div>
								<button type="search" class="btn btn-info no-border-radius">Search</button>
							</form>
							<a href="home" class="btn btn-primary">Continue Shopping!<i class="fa fa-arrow-right"></i>
							</a>
						</div>
					</div>
				</section>

			</div>
		</div>

</body>
</html>
