<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
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
<body style="position:relative">
	

		<div style=" position: fixed; width:100%; z-index: 90; top:0; left:0" class="header">
			<nav class="navbar navbar-expand-lg bg-danger">
				<div class="container-fluid ">
					<a class="navbar-brand logo" href="#"> <img alt=""
						src="img/logowebpro.jpg">
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
						aria-controls="navbarNavAltMarkup" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<div class="navbar-nav">
							<a class="nav-link text-white"
								href="${pageContext.request.contextPath}/">Home</a>
							<c:if test="${sessionScope.user.isAdmin == 1 }">
								<a class="nav-link text-white"
									href="${pageContext.request.contextPath}/productList">Product
									Management</a>
							</c:if>

						</div>
					</div>
					<form class="d-flex" action="search" method="POST">
						<div class="input-group input-group-sm">
							<input name="txt" class="form-control me-2 mx-2" type="text"
								placeholder="Search..." aria-label="Small"
								aria-describedby="inputGroup-sizing-sm">
							<div class="input-group-append">
								<button type="submit" class="btn btn-secondary btn-number">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
						<a class="btn btn-outline-warning mx-2"
							href="${pageContext.request.contextPath}/register">Register</a>
						<c:if test="${sessionScope.user==null }">
							<a class="btn btn-outline-warning mx-2"
								href="${pageContext.request.contextPath}/login">Login</a>
						</c:if>

						<c:if test="${sessionScope.user !=null }">
							<a class="btn btn-outline-warning mx-2"
								href="${pageContext.request.contextPath}/logout">Logout</a>
						</c:if>

						<c:if test="${sessionScope.user.isAdmin != 1 }">
							<a class="nav-link text-white"
								href="${pageContext.request.contextPath}/cartInfo?tel=${loginedUser.tel}"><i
								class="fa fa-shopping-cart mx-2 text-warning"></i></a>
						</c:if>

						<i style="padding: 10px 0px" class="fa fa-user mx-2 text-white"></i>
						<a href="${pageContext.request.contextPath}/logout"><b
							style="padding: 6px 0px; font-size: 25px" title="Logout"
							class="text-white">${loginedUser.userName}</b></a>

					</form>
				</div>
			</nav>
		</div>
	
</body>
</html>