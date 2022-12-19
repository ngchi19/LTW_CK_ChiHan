<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- 	<h3>Home Page</h3>
	This is demo Simple web application using jsp,servlet &amp; Jdbc.
	<br>
	<br>
	<b>It includes the following functions:</b>
	<ul>
		<li>Login</li>
		<li>Storing user information in cookies</li>
		<li>Product List</li>
		<li>Create Product</li>
		<li>Edit Product</li>
		<li>Delete Product</li>
	</ul>
	 -->
	<!-- <div class="banner"></div> -->
	<div class="product">
		<div class="container">
			<div class="title text-center">
				<span class="text-white">PRODUCT</span>
			</div>
			<div class="row">
				<!--<div class="col-1">
					 <div class="card">
						<div class="card-header bg-danger text-white">
							<i class="fa fa-bars"></i> Categories:
						</div>
						<ul class="list-group list-group-flush">
							<a href="">
								<li class="list-group-item">Pizzas</li>
							</a>
							<a href="">
								<li class="list-group-item">Spaghetti</li>
							</a>
							<a href="">
								<li class="list-group-item">Beefsteak</li>
							</a>
							<a href="">
								<li class="list-group-item">Drink</li>
							</a>
						</ul>
					</div>
				</div> -->
				<div class="col-12">
					<div class="row content">
						<c:forEach items="${productList}" var="product">
							<div class="col-3 item ">
								<div class="card">
									<!-- <img class="card-img-top img-fluid"
		                  src="https://media-cdn.tripadvisor.com/media/photo-s/19/79/8f/27/r-t-ngon-very-well.jpg"
		                  alt="Card image cap"> -->
									<img style="height:170px" class="card-img-top img-fluid"
										src="<c:out value="${product.getImg() }"/>"
										alt="Card image cap">
									<div class="card-body">
										<p class="card-text">
											<a href="" class="mb-3"><b>${product.name}</b></a>
										<p
											style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical;">${product.description}</p>
										<p class="text-right">${product.price}$</p>


										</p>
									</div>
									<div class="alert alert-danger text-center">
										<button data-toggle="modal" type="button"
											data-target="#exampleModalCenter" class="btn btn-danger">Book</button>
										<form style="display: inline"
											action="${pageContext.request.contextPath}/addToCart"
											method="POST">
						<!-- HIDDEN  -->
											<input type="hidden" name="code" value="${product.code}">
											<input type="hidden" name="name" value="${product.name}">
											<input type="hidden" name="price" value="${product.price}">
											<input type="hidden" name="quantity" value="${product.quantity}">
											<input type="hidden" name="tel" value="${loginedUser.tel}">
											<%-- <a class="btn btn-warning"
												href="addToCart?code=${product.code}?tel=${loginedUserAcc.tel}">Cart</a> --%>
											<input class="btn btn-warning" name="action"  type="submit" value="Cart" />
										</form>

									</div>
								</div>
							</div>
						</c:forEach>



					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Đặt Pizza</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form 
						>
						<div class="">
							
							<input type="text" class="form-control mb-3" id="validationDefault02"
								 placeholder="Vui lòng nhập tên" required>
						</div>
						<div class="">
							
							<input type="number" placeholder="Vui lòng nhập số điện thoại"
								class="form-control mb-3" id="validationDefault03" required>
						</div>
						<div class="">
							
							<input type="text" placeholder="Vui lòng nhập địa chỉ"
								class="form-control" id="validationDefault03" required>
						</div>
						
                  		<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" id="btnBook" class="btn btn-primary">Đặt</button>
				</div>
						<!-- <div class="text-center mt-2">
							<button class="btn btn-danger col-12" type="submit">Login</button>
						</div> -->
					</form>

				</div>
				
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script>
	document.getElementById("btnBook").onclick=function(){
		/* document.getElementById("exampleModalCenter").classList.remove('show'); */
		
	}
	</script>
</body>
</html>