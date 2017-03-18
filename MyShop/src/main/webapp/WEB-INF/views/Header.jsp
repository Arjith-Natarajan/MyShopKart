<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html ng-app='app'>
<head>
<link rel="shortcut icon" href="bootstrap/img/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/custom-style.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/navbar.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css"
	rel="stylesheet">

<script src="bootstrap/js/jquery-3.0.0.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="bootstrap/js/angular.min.js"></script>

<title>NavBar</title>

</head>

<body ng-controller="MyCtrl2">
<script type="text/javascript">

angular.module('app', []);

angular.module('app').controller('MyCtrl2', function ($scope ,$http){
	$scope.itemList = [];
	
    $scope.pull = function () {
        $http(
      		  {
      			  method: "GET", 
      			  url: "/MyShop/cart",
      			  headers: {
      				   Accept: 'text/plain'
      				 }
      			}
      		)
        .success(function(data){
      	  console.log(data+ " none"); 
      	  $scope.itemList=data;
      	  
        });
    }
    $scope.pull();
    $scope.getTotal = function(){
        var total = 0;
        for(var i = 0; i < $scope.itemList.length; i++){
            var product = $scope.itemList[i];
            total += (product.p_price * product.quantity);
        }
        return total;
    }
    $scope.removeObj = function(pid){
  	  $http(
      		  {
      			  method: "GET", 
      			  url: "/MyShop/removeItem",
      			  params: {
      			        proID : pid
      			    }
      			}
      		)
        .success(function(data){
      	  console.log("Deletion Successful " + data); 
        })
        .error(function(data){
      	  $scope.message="You have successfully DELETED 1 old product!";
        });
  		
  	  	$scope.pull();
  	  
    }

});


</script>
	<div id="nav">
		<div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix"
			data-offset-top="100">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home">
						<div style="position: relative; top: -10px; padding-bottom: 0px;">
							<center>MyShop.in</center>
						</div> <img class="img-responsive logo" src="bootstrap/img/hdcam.png"
						style="height: 100px; width: 100px;" alt="">
					</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">

					<ul class="nav navbar-nav">
						<li class="active"><a href="Welcome"><i
								class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a></li>
						<li><a href="About ">About</a></li>
						<li><a href="CC">Customer Care</a></li>
						<li><a href="Contact ">Contact</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Categories&nbsp;<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="Products?val=cam">Cameras</a></li>
								<li><a href="Products?val=phn">Phones</a></li>
								<li><a href="Products?val=acs">Accessories</a></li>
								<li class="divider"></li>
								<li><a href="Products?val=wtch">Watches</a></li>
								<li><a href="Products?val=usb">Memory Sticks</a></li>
								<li class="divider"></li>
								<li><a href="Products?val=all">All Categories</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${not empty LoggedIn }">
								<li><a href="#" data-target="#shoppingCart"
									data-toggle="modal">My Cart&nbsp;<span
										class="badge pull-right">{{itemList.length}}</span><i
										class="glyphicon glyphicon-shopping-cart"></i>
								</a></li>

								<li><a href="logout"><span
										class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="Signup "><span
										class="glyphicon glyphicon-user"></span> Sign Up</a></li>
								<li><a href="login"><span
										class="glyphicon glyphicon-log-in"></span> Login</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>

				<!--/.nav-collapse -->
			</div>
			<!--/.contatiner -->


		</div>
	</div>
	<div class="modal fade" id="shoppingCart">

		<div class="modal-dialog modal-lg">

			<div class="modal-content">
				<div class="modal-header">
					<p class="pull-right text-primary">
						<b>{{itemList.length}} items</b>
					</p>
					<h4 class="modal-title text-primary">
						<span class="glyphicon glyphicon-shopping-cart"></span> Your Cart
					</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered">
						<tr>

							<th>Sl no</th>

							<th>Item Name</th>

							<th>Unit Price (INR)</th>

							<th>Quantity</th>

							<th>Price</th>

							<th></th>

						</tr>
						<tr ng-repeat="cartItem in itemList">

							<td>{{$index +1}}</td>

							<td>{{cartItem.p_name}}</td>

							<td>{{cartItem.p_price}}</td>

							<td><input type="number" class="form-control" value="1"
								 style="width: 70px;" min="1" max="20" ng-model="cartItem.quantity"/></td>

							<td>{{cartItem.p_price * cartItem.quantity}}</td>
							<td><a href="#" class="btn btn-danger btn-sm" ng-click="removeObj(cartItem.KartItemid)">remove</a></td>
						</tr>
						<tr class="active lead">

							<td colspan="4">Total</td>

							<td> ₹ {{ getTotal() }}</td>

							<td><a href="#" class="btn btn-danger btn-sm">clear all</a>

							</td>

						</tr>

					</table>
					<a href="#" class="btn btn-success pull-right">Checkout <span
						class="glyphicon glyphicon-chevron-right"> </span>

					</a> <a href="#" class="btn btn-info" data-dismiss="modal">Continue
						Shopping </a>
				</div>



			</div>

		</div>

	</div>
	<script type="text/javascript">
		(function($) {
			$(window).scroll(function() {
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
