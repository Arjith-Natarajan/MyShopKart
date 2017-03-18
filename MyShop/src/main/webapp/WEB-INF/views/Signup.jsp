<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Registration | MyShop.in</title>

		<link rel="shortcut icon" href="bootstrap/img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/custom-style.css" rel="stylesheet" type="text/css" />

<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container col-xs-5 col-xs-offset-4" style="height: 650px; position:relative; left:-50px; overflow:hidden;">
    <div class="v-center">
        <div class="row" style="">

            <div class="panel panel-default" style="padding-bottom: 0px;">
                <div class="panel-body" style="padding-bottom: 0px;">
                    <div class="form-group">
                        <h2>Create an account!</h2>

                    </div>

                    <form:form method="POST" action="register" modelAttribute="user">
                    <form:hidden path="userId"/>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="firstName" id="first_name" class="form-control floatlabel" pattern="[A-Za-z]+" placeholder="First Name" required="true" autofocus="true"></div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="lastName" id="last_name" class="form-control" pattern="[A-Za-z]+" placeholder="Last Name"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                      
                                            <input name="userName" type="text" maxlength="50" class="form-control" placeholder="User name" required="true">
                                           
                                                <span class="help-block">Username cannot contain any spaces</span>
                                            </div>

                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-6">
                                            <div class="form-group">
                                                <input type="text" name="mobileNo" id="mobile_number" class="form-control" placeholder="Mobile Number" pattern="(7|8|9)\d{9}"></div>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <input name="emailId" id="signupEmail" type="email" maxlength="50" class="form-control" placeholder="E-mail address" required="true">
                                                <span class="help-block">Please provide your E-mail</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-6 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                              
                                                        <input type="password" name="password" id="password" class="form-control" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="true">
               
                                                            <span class="help-block">Password should be at least 8 characters</span>
                                                        </div>

                                                    </div>
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <div class="form-group">
                                                            <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" placeholder="Confirm Password" required="true">
                                                                <span class="help-block">with at least one digit & lowercase letter</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="checkbox">

                                                            <input type="checkbox" checked="checked">
                                                                Subscribe to newsletter, offers and regular updates
                                                                <br>
                                                                    <div class="form-group">By creating an account, you agree to our
                                                                        <a href="#">Terms of Use</a>
                                                                        and our
                                                                        <a href="#">Privacy Policy</a>.
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <button id="signupSubmit" type="submit" class="btn btn-lg btn-primary btn-block">
                                                                    <strong>
                                                                        <b>Create your account</b>
                                                                    </strong>
                                                                </button>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-xs-6 col-sm-6 col-md-6">
                                                                    <div class="form-group">
                                                                        <a style="color: #c44133;" href="home">
                                                                            <i class="fa fa-home"></i>
                                                                            &larr; Back to home</a>
                                                                    </div>

                                                                </div>
                                                                <div class="col-xs-6 col-sm-6 col-md-6">
                                                                    <div class="form-group">
                                                                        Already have an account?
                                                                        <a href="login">Signin</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form:form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

 </body>
 <script type="text/javascript">
 var password = document.getElementById("password")
 , confirm_password = document.getElementById("password_confirmation");

function validatePassword(){
 if(password.value != confirm_password.value) {
   confirm_password.setCustomValidity("Passwords Don't Match");
 } else {
   confirm_password.setCustomValidity('');
 }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

 </script>
</html>
