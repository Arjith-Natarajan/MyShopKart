
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html ng-app="MyApp">
<head>

<link rel="shortcut icon" href="bootstrap/img/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="bootstrap/img/favicon.ico" type="image/x-icon">

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/custom-style.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/simple-sidebar.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/fonts/font-awesome-4.6.3/css/font-awesome.min.css"
	rel="stylesheet">

<script src="bootstrap/js/jquery-3.0.0.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="bootstrap/js/angular.min.js" type="text/javascript"></script>

<title>Welcome Admin| MyShop.in</title>
</head>
<body>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />

	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="Landing"> MyShop.in </a></li>
				<li><a href="#tab0" data-toggle="tab"> <i
						class="fa fa-tachometer" aria-hidden="true"></i> Dashboard
				</a></li>
				<li><a href="#tab1" data-toggle="tab" id="ptable"> <i
						class="fa fa-arrow-circle-right" aria-hidden="true"></i>&nbsp;Products
				</a></li>
				<li><a href="#tab2" data-toggle="tab"> <i
						class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;Customers
				</a></li>
				<li><a href="#tab3" data-toggle="tab"> <i
						class="fa fa-calendar" aria-hidden="true"></i>&nbsp;Orders
				</a></li>
				<li><a href="#tab4" data-toggle="tab"> <i
						class="fa fa-bookmark" aria-hidden="true"></i>&nbsp;Suppliers
				</a></li>
				<li><a href="#tab5" data-toggle="tab"> <i
						class="fa fa-shield" aria-hidden="true"></i>&nbsp;Discounts
				</a></li>
				<li><a href="#"> <i class="fa fa-phone" aria-hidden="true"></i>&nbsp;Contact
				</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid tab-content">
			<div>
			<a class="btn btn-lg btn-primary" href="#menu-toggle" role="button" id="menu-toggle">&raquo;</a>              
          
												
										</div>
				<div class="tab-pane active text-style" id="tab0">
					<div class="row">
						<div class="col-lg-12">
							<div class="jumbotron">
								<h1>
									Welcome Admin !<i class="fa fa-cog fa-spin fa-fw"></i>
								</h1>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<h2>
										${pageContext.request.userPrincipal.name} | <a
											href="javascript:formSubmit()"> Logout</a>
									</h2>
								</c:if>
								<p class="lead">If you are seeing this landing home page
									then login is working</p>
								<p>And for now the page is under-construction.</p>
							</div>
						</div>
					</div>

				</div>
				<div class="tab-pane text-style" id="tab1"  ng-controller="MyCtrl">
					<h1>Products <span class="pull-right"> <button clsss="btn btn-info btn-xs" ng-click="search()"><i class="fa fa-refresh" aria-hidden="true"></i></button></span></h1>
					<div class="alert alert-info" id="errorbox" ng-show="message">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <span>
                            <strong>{{message}}</strong>
                        </span>
                    </div>
                          <script>
                var fade_out = function () {
                    $("#errorbox").fadeOut();
                }
                setTimeout(fade_out, 3000);

            </script>
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="table-responsive">
									<table id="mytable" class="table table-bordred table-striped">

										<thead>

											<th><input type="checkbox" id="checkall" /></th>
											<th class="col-md-2">Product Name</th>
											<th class="col-md-3">Description</th>
											<th class="col-md-1">Category</th>
											<th class="col-md-1">Price</th>
											<th class="col-md-1">Available</th>
											<th>Edit</th>

											<th>Delete</th>
										</thead>
										<tbody>
											<tr>
											<form ng-submit="addProduct()" modelAttribute="product">
												<td ></td>
												<td class="col-md-2"><input type="text" class="form-control" name="productName" ng-model="item.productName"></td>
												<td class="col-md-3"><input type="text" class="form-control" name="productDesc" ng-model="item.productDesc"></td>
												<td class="col-md-1"><input type="text"  class="form-control"name="category" ng-model="item.category"></td>
												<td class="col-md-1"><input type="text"  class="form-control" name="price" ng-model="item.price"></td>
												<td class="col-md-1"> <input type="checkbox" name="available" value="TRUE" ></td>
												<td>
														<button class="btn btn-success btn-xs" type="submit">
															Add &nbsp;<span class="glyphicon glyphicon-plus"></span>
														</button>
													</td>
												<td><button class="btn btn-warning btn-xs" type="reset">
															Clear &nbsp;
														</button>
												</td>
											</form>
											</tr>
											
											<tr ng-repeat="product in results | orderBy:'-'">
												<td><input type="checkbox" class="checkthis" /></td>
												<td ng-hide="edited === $index" class="col-md-2">{{product.productName}}</td>
												<td ng-hide="edited === $index" class="col-md-3">{{product.productDesc}}</td>
												<td  ng-hide="edited === $index" class="col-md-1">{{product.category}}</td>
												<td  ng-hide="edited === $index" class="col-md-1">{{product.price}}</td>
												<td  ng-hide="edited === $index" class="col-md-1">{{product.available}}</td>
												<td ng-hide="edited === $index">
														<button class="btn btn-primary btn-xs" ng-click="edit($index,product)">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</td>
												<td ng-hide="edited === $index">
														<button class="btn btn-danger btn-xs" ng-click="removeTask(product.productID)">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</td>												
													
											<!-- edit -->
												<td ng-show="edited === $index" class="col-md-2"><input type="text" class="form-control" ng-model="editedModel.productName"  > <input type="hidden" ng-model="editedModel.productID" ></td>
												<td ng-show="edited === $index" class="col-md-3"><textarea rows="2" class="form-control" ng-model="editedModel.productDesc" ></textarea></td>
												<td  ng-show="edited === $index" class="col-md-1"><input type="text" class="form-control" ng-model="editedModel.category" ></td>
												<td  ng-show="edited === $index" class="col-md-1"><input type="text" class="form-control" ng-model="editedModel.price" ></td>
												<td  ng-show="edited === $index" class="col-md-1"><input type="checkbox" value="TRUE" ng-model="editedModel.available" ></td>
												<td ng-show="edited === $index">
														<button class="btn btn-primary btn-xs" ng-click="finishEdit($index, editedModel)">
															<i class="fa fa-floppy-o" aria-hidden="true"></i>
														</button>
													</td>
												<td ng-show="edited === $index">
														<button class="btn btn-danger btn-xs" ng-click="removeTask(product.productID)">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</td>
											</tr>
										</tbody>

									</table>

<!-- 									<div class="clearfix"></div> -->
									<ul class="pagination pull-center">
										<li class="disabled"><a href="#"><span
												class="glyphicon glyphicon-chevron-left"></span></a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#"><span
												class="glyphicon glyphicon-chevron-right"></span></a></li>
									</ul>

								</div>

							</div>
						</div>
					</div>
				</div>
				
				<script>
				angular.module('MyApp',[])
				  .controller('MyCtrl', ['$scope', '$http', function ($scope, $http) {
				      
				      $scope.results = [];
				      $scope.item={};

				      $scope.search = function () {
				          $http(
				        		  {
				        			  method: "GET", 
				        			  url: "/MyShop/area",
				        			  headers: {
				        				   Accept: 'text/plain'
				        				 }
				        			}
				        		)
				          .success(function(data){
				        	  console.log(data+ " none"); 
				        	  $scope.results=data;
				        	  
				          });
				      }
				      $scope.search();
				      
				      $scope.removeTask = function(pid){
				    	  $http(
				        		  {
				        			  method: "GET", 
				        			  url: "/MyShop/removeProduct",
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
				    	
				    	  
				      }
				      
				      $scope.addProduct = function(){
				    	  $http(
				        		  {
				        			  method: "GET", 
				        			  url: "/MyShop/addingProduct",
				        			  params: {
				        			        pro : $scope.item
				        			    }
				        			}
				        		)
				          .success(function(data){
				        	  console.log("Insertion Successful" + data); 
				          })
				          .error(function(data){
				        	  $scope.message="You have successfully Inserted 1 new product!";
				          });
				    	
				    	  
				      }
				      
				      $scope.edited = -1;
				      $scope.editedModel = {};

				          $scope.edit = function (index,product) {
				              $scope.edited = index;
				              $scope.editedModel = product;
				              
				          };

				          $scope.finishEdit = function (index) {
				        	  $http(
					        		  {
					        			  method: "GET", 
					        			  url: "/MyShop/updatingProduct",
					        			  params: {
					        			        pro : $scope.editedModel
					        			    }
					        			}
					        		)
					          .success(function(data){
					        	  console.log("Updation Successful" + data); 
					          })
					          .error(function(data){
					        	  $scope.message="You have successfully Updated 1 new product!";
					          });
				              console.log($scope.editedModel);
				              $scope.edited = -1;
				          };
				     
				  }]);
				
				
				</script>
				
				<div class="tab-pane text-style" id="tab2">
					<h1>Customer</h1>
				</div>
				<div class="tab-pane text-style" id="tab3">
					<h1>Orders</h1>
				</div>
				<div class="tab-pane text-style" id="tab4">
					<h1>Suppliers</h1>
				</div>
				<div class="tab-pane text-style" id="tab5">
					<h1>Discounts</h1>
				</div>

			</div>
		</div>
		<!-- /#page-content-wrapper -->

	</div>
	<!-- /#wrapper -->


	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function (e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
		
		$(document).ready(function(){
			$("#mytable #checkall").click(function () {
			        if ($("#mytable #checkall").is(':checked')) {
			            $("#mytable input[type=checkbox]").each(function () {
			                $(this).prop("checked", true);
			            });

			        } else {
			            $("#mytable input[type=checkbox]").each(function () {
			                $(this).prop("checked", false);
			            });
			        }
			    });
			    
			    $("[data-toggle=tooltip]").tooltip();
			});
	</script>
</body>
</html>
