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
		<link href="bootstrap/css/contact.css" rel="stylesheet" type="text/css" />
		<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">

		<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>


	<title>Contact us | Myshop.in</title>
</head>
<body>
    <%@ include file="Header.jsp" %>
    <div class="container" style="margin-top:65px;">

        <div class="row">
            <div style="margin-left: 0px;" class="text-center">
                <h1>Get in touch with us
                    <a href="#">MyShop.in</a>
                </h1>
            </div>
            <div class="col-lg-8">

                <p class="lead">Like us? Hate us? or just wanna know more about us? Great! Let us Know! just drop in a message for us below and we would get back to you in a jiffy!</p>

                <form id="contact-form" method="post" action="contact.php" role="form">

                    <div class="messages"></div>

                    <div class="controls">

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="form_name">Firstname *</label>
                                    <input id="form_name" type="text" name="name" class="form-control" placeholder="How shd we call you?" required="required" data-error="Firstname is required.">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="form_lastname">Lastname *</label>
                                        <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="And your Surname?" required="required" data-error="Lastname is required.">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="form_email">Email *</label>
                                            <input id="form_email" type="email" name="email" class="form-control" placeholder="We dont Spam" required="required" data-error="Valid email is required.">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="form_phone">Phone</label>
                                                <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Please enter your phone">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="form_message">Message *</label>
                                                    <textarea id="form_message" autofocus="true" name="message" class="form-control" placeholder="What would you like to talk about?" rows="4" required="required" data-error="Please,leave us a message."></textarea>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <input type="submit" class="btn btn-success btn-send" value="Send message"></div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p class="text-muted">
                                                        <strong>*</strong>
                                                        These fields are required.</p>
                                                </div>
                                            </div>
                                        </div>

                                    </form>

                                </div>
                                <!-- /.8 -->
                                <div class="col-lg-3 col-lg-offset-1">
                                    <div class="panel panel-default" style="margin-top: 30px; background-color: #f0f0f0;">
                                        <div class="panel-body">
                                            <form>
                                                <legend>
                                                    <span class="glyphicon glyphicon-globe"></span>�Our office
                                                </legend>
                                                <address>
                                                    <strong>Daymonyr, Inc.</strong>
                                                    <br>
                                                        410 Blossom Ave, Suite 600<br>
                                                            San Francisco, CA 94107<br>
                                                                <abbr title="Phone">
                                                                    P:</abbr>
                                                                (123) 456-7890
                                                            </address>

                                                            <strong>
                                                                <span class="glyphicon glyphicon-earphone"></span>&nbsp; Tech Support</strong>
                                                            <p>+880-1700-987654</p>

                                                            <strong>
                                                                <span class="glyphicon glyphicon-send"></span>
                                                                E-mail</strong>
                                                            <p>
                                                                <a href="mailto:#">info@yourdomain.com</a>
                                                            </p>
                                                            <ul>
                                                                <li>
                                                                    <a href="#" class="skype">
                                                                        <i class="fa fa-skype"></i>&nbsp;skypeuser</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#" class="google">
                                                                        <i class="fa fa-google-plus"></i>&nbsp;googleplus</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#" class="linkedin">
                                                                        <i class="fa fa-linkedin"></i>&nbsp;linkedin_id</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#" class="twitter">
                                                                        <i class="fa fa-twitter"></i>&nbsp;twitter_id</a>
                                                                </li>
                                                            </ul>
                                                        </form>

                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        <!-- /.row-->

                                    </div>
                                    <!-- /.container-->

                                    <%@ include file="Footer.jsp" %>
                                </body>
                            </html>
