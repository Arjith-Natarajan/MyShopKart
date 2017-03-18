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

		<script src="bootstrap/js/jquery-3.0.0.js" type="text/javascript"></script>
		<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

		<title>NavBar</title>
</head>


<body>
	<div id="nav" >
  <div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix" data-offset-top="100">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home">
          	<div style="position:relative; top:-10px; padding-bottom:0px;">
          		<center>MyShop.in</center>
          	</div>
          	<img class="img-responsive logo" src="bootstrap/img/hdcam.png" style="height: 100px; width: 100px;" alt="">
          </a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">

          <ul class="nav navbar-nav">
            <li class="active"><a href="Welcome"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a>
            </li>
            <li><a href="About ">About</a>
            </li>
            <li><a href="CC">Customer Care</a>
            </li>
            <li><a href="Contact ">Contact</a>
            </li>
            <li class="dropdown">
		        <a class="dropdown-toggle"  data-toggle="dropdown" href="#">Categories&nbsp;<b class="caret"></b></a>
		        <ul class="dropdown-menu">
		          <li><a href="Products?val=cam">Cameras</a></li>
		          <li><a href="Products?val=phn">Phones</a></li>
		          <li><a href="Products?val=acs">Accessories</a></li>
		          <li class="divider"></li>
		          <li><a href="Products?val=wtch">Watches</a></li>
		          <li><a href="Products?val=usb">Memory Sticks</a></li>
		          <li class="divider"></li>
		          <li><a href="Products?val=all">All Categories</a></li>
		        </ul>
     		</li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
				<c:choose>
				    <c:when test="${not empty LoggedIn }">
				    	<li><a href="#">My Cart&nbsp;<span class="badge pull-right">4</span><i class="glyphicon glyphicon-shopping-cart"></i> </a></li>

				        <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
				    </c:when>
				    <c:otherwise>
				       <li><a href="Signup "><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	     			   <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				    </c:otherwise>
				</c:choose>

			</ul>
		</div>

        <!--/.nav-collapse -->
      </div>
      <!--/.contatiner -->
</div>
</div>
<script type="text/javascript">
(function($){
	$(window).scroll(function(){
	if ($(this).scrollTop() > 0) {
		$('.logo').fadeOut("slow");

	} else {
		$('.logo').fadeIn("fast");
	}
	});
	})(jQuery);
</script>

</body>
</html>
