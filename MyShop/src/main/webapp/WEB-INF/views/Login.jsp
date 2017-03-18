<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<title>Sign in | MyShop.in</title>

		<link rel="shortcut icon" href="bootstrap/img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/custom-style.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/style.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container col-xs-4 col-xs-offset-4" style="top:15px;">
    <div class="v-center">
        <div class="row jumbotron v-center" style="padding-right:40px;padding-left:40px; height:620px;">

            <form:form name="loginForm" class="form-signin" method="post" action="loginh">
                <div class="" style="text-align: center; padding:0px;">
                    <h2>
                        <center>
                            Welcome!</center>
                    </h2>
                </div>
               <c:if test="${not empty Error}"> 
                    <div class="alert alert-danger" id="errorbox">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <span>
                            <strong>${Error}</strong>
                        </span>
                    </div>
                </c:if>
                 <c:if test="${not empty Msg}"> 
                    <div class="alert alert-info" id="errorbox">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <span>
                            <strong>${Msg}</strong>
                        </span>
                    </div>
                </c:if>


                <label style="padding-top:5px;">
                    <b>Username</b>
                </label>
                <input type="text" class="form-control" name="userName" id="user" placeholder="Email Address" required="true" autofocus=""/>
                <label style="padding-top:10px;">
                    <b>Password</b>
                </label>
                <input type="password" class="form-control" name="password" id="pwd" placeholder="Password" required="true"/>
                <label class="checkbox" style="position:relative; left:0px; padding-top:10px; font-size:15px; font-variant: bold;">
                    <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">
                        Remember me
                    </label>
                    <button class="btn btn-lg btn-primary btn-block" type="submit" name="login">
                        <strong>Login</strong>
                    </button>
                    <div style="padding-top:10px;">
                        <a href="Signup" style="color:white; ">
                            <button class="btn btn-lg btn-danger btn-block" type="button">
                                <strong>Sign Up</strong>
                            </button>
                        </a>
                    </div>
                    <br>
                        <span class="psw pull-right">Forgot
                            <a href="#">password?</a>
                        </span>
                    </form:form>
                </div>
            </div>
        </div>
        <div class="col-xs-4">
            <img class="img-responsive logo hidden" src="bootstrap/img/hdcam.png" style="height: 60px; width: 60px; opacity:0.4;" alt=""></div>

            <script>
                var fade_out = function () {
                    $("#errorbox").fadeOut();
                }
                setTimeout(fade_out, 3000);

            </script>
</body>
</html>
