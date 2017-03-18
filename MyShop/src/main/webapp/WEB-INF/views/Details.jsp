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
<link href="bootstrap/css/bootstrap-social.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/custom-style.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/landing.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap/js/jquery-3.0.0.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<style>

	#ratings{
		
		color:#FFD700;
		font-size: 19px;
		
		
	}
	
	#review{
		color: #c44133;
	}
	
	.btn-mail{
		background-color: #2c3e50;
		color: #ffffb1;
	}
	
	.row{padding-top:  20px;}
	
	.panel-row-border {
	padding-top: 10px; padding-bottom: 10px; border-right: 1px solid #2c3e50; border-radius: 10px; border-top: 1px solid #2c3e50; border-bottom: 1px solid #2c3e50; 
	}

</style>
</head>

<body>
<%@ include file="Header.jsp" %>
	<div class="container" style="margin-top:80px;">
   <div class="col-md-6 panel panel-row-border">
   
    <div class="row1">
    <img src="bootstrap/img/productImage.jpg" alt="Kodak Brownie Flash B Camera" width="100%" height="400px" class="image-responsive thumbnail"/>
    <div class="thumbnails row">
    	<div class="col-xs-3">
<a href="#"><img src="http://placehold.it/750x600"
alt="" class="img-thumbnail img-responsive" /></a>
</div><div class="col-xs-3">
<a href="#"><img src="http://placehold.it/750x600"
alt="" class="img-thumbnail img-responsive" /></a>
</div><div class="col-xs-3">
<a href="#"><img src="http://placehold.it/750x600"
alt="" class="img-thumbnail img-responsive" /></a>
</div><div class="col-xs-3">
<a href="#"><img src="http://placehold.it/750x600"
alt="" class="img-thumbnail img-responsive" /></a>
</div>
    </div>
    
    
    </div>
    <div class="row">
    	<div class="col-md-6"><a class="btn btn-block btn-social btn-lg btn-primary"><span class="fa fa-heart"></span> Add to Wishlist</a></div>
    	<div class="col-md-6"><a class="btn btn-block btn-social btn-lg btn-danger"><span class="fa fa-envelope"></span> Mail to a Friend</a></div>
    </div>
    <div class="row">
   
    	<div class="text-center center-block">
    			
    			 
    			<div class="col-md-3"><a class="btn btn-block btn-social btn-xs btn-facebook"><span class="fa fa-facebook"></span> Share</a></div> 
    			<div class="col-md-3"><a class="btn btn-block btn-social btn-xs btn-twitter"><span class="fa fa-twitter"></span>Tweet</a></div>
    			<div class="col-md-3"><a class="btn btn-block btn-social btn-xs btn-google" ><i class="fa fa-google"></i>Post</a></div>    			
    			<div class="col-md-3"><a class="btn btn-block btn-social btn-xs btn-pinterest"><span class="fa fa-pinterest"></span> Pin It!</a></div>
    			 <!-- a class="btn  btn-social-icon btn-lg btn-openid"><span class="fa fa-envelope fa-2x"></span></a--> 
                </div>
    </div>
   </div>
   <div class="col-md-6 panel">
    <h5><a>Kodak Astro Zoom AZ521-BK Digital Camera with 52x Optical Image Stabilized Zoom</a></h5> 

    
    <div class="row1" style="padding-left:">  
    	<div class="pull-left">
    		<b>By Kodak</b>	<br>
    		<h4><span class="text-info" >$24.99</span></h4>
    	</div>
    	    <div class="pull-right col-md-7 " style="padding-top:0px;" align="right">
    
    	<div id="ratings"><span style=" color:#2c3e50;"><b>Product Ratings:</b></span>
    	<i class="fa fa-star" aria-hidden="true"></i>
    	<i class="fa fa-star" aria-hidden="true"></i>
    	<i class="fa fa-star" aria-hidden="true"></i>
    	<i class="fa fa-star" aria-hidden="true"></i>
    	<i class="fa fa-star-half-o" aria-hidden="true"></i>
    	</div>
    	<a href="#"><span id="review"> Read User Reviews <i class="fa fa-pencil" aria-hidden="true"></i></span></a>
    	
    </div>
    
    </div>
<div class="row">

<p class="col-md-offset-1 col-md-11">Lorem ipsum dolor sit amet, consectetur adipisicing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna
aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>
<div class="row text-center">
<a href="#" class="btn btn-success btn-lg  col-md-offset-1 col-md-6">Buy Now</a>
	<a href="#" class="btn btn-primary btn-warning col-md-offset-1 col-md-3">Add to cart <span class="glyphicon glyphicon-shopping-cart"></span></a>
</div>
   </div>
   
   
       



	</div>

<%@ include file="Footer.jsp" %>

</body>

</html>