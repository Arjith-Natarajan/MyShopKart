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
		<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">

		<script src="bootstrap/js/jquery-3.0.0.js" type="text/javascript"></script>
		<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

		<title>Admin BackDoor | MyShop.in</title>

		<style type="text/css">
			body
				{
					overflow-y:hidden;
				}
			.profile-img
				{
				    width: 96px;
				    height: 96px;
				    margin: 0 auto 10px;
				    display: block;
				    -moz-border-radius: 50%;
				    -webkit-border-radius: 50%;
				    border-radius: 50%;
				}
			.bottom-column
				{
				    float: none;
				    display: table-cell;
				    vertical-align: bottom;
				}
		</style>

</head>
<body>
	<div class="col-xs-2">
		<div style="position:absolute; top:280px; font-size:100px; opacity:0.7;">
			<i class="fa fa-lock fa-5x"></i>
		</div>
	</div>
	<div class="container col-xs-3 col-xs-offset-2" style="postion:relative; left:85px;">
		<div class="text-center">
			<h4>
				<i class="fa fa-user-plus fa-1x"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-heart" style="color: #c44133;"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-sign-in"></i>
			</h4>
			<h1>Admin</h1>
		</div>
		<div class="panel panel-default">
			<div class="row" style="padding-top:20px; padding-bottom:40px; padding-left:30px; padding-right:30px;">

				<form class="form-signin" method="POST" action="<c:url value='/j_spring_security_check' />">
				<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
				
					<img class="profile-img" src="bootstrap/img/admin-user-img.png" alt="">
						<c:if test="${not empty error}">
			<div class="error alert alert-danger">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg alert alert-info">${msg}</div>
		</c:if>

						<div style="padding-top:10px;">
							<input type="text" class="form-control" name="username" placeholder="AdminName" required="true" autofocus=""/></div>
						<div style="padding-top:10px;">
							<input type="password" class="form-control" name="password" placeholder="Password" required="true" style="padding-top:10px;"/></div>
						<div style="padding-top:10px;">
							<button class="btn btn-lg btn-primary btn-block" type="submit">
								<strong>Login</strong>
							</button>
						</div>
						<label class="checkbox" style="position:relative; left:0px; padding-top:0px; font-size:18px; font-variant: bold;">
							<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">
								Stay Signed in
							</label>
							<span class="psw pull-right">Forgot
								<a href="#">password?</a>
							</span>
						</form>
					</div>
				</div>
			</div>
			<div class=" col-xs-5">
				<a href="Landing">
					<div class="pull-right">
						<img class="img-responsive logo" src="bootstrap/img/hdcam.png" height="45" width="45" style="opacity:0.9; float:right; padding-top:15px;" alt="">
							<h5>MyShop.in</h5>
						</div>
					</a>
				</div>
			</body>
		</html>
