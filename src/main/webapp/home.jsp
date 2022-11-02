<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="header">
        <nav class="navbar navbar-expand-lg bg-danger">
            <div class="container-fluid ">
              <a class="navbar-brand logo" href="#">
                
                <img alt="" src="img/logowebpro.jpg">
              </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                  <a class="nav-link active text-white" aria-current="page" href="#">Home</a>
                  <a class="nav-link text-white" href="#">About</a>
                  <a class="nav-link text-white" href="#">Services</a>
                  <a class="nav-link text-white" href="">Contact</a>
                </div>
              </div>
              <form class="d-flex" role="search">
                <input class="form-control me-2 mx-2" type="search" placeholder="Search" aria-label="Search">
                <a class="btn btn-outline-warning mx-2" href="register.jsp">Register</a>
                <a class="btn btn-outline-warning mx-2" href="login.jsp">Login</a>
                <i style="padding:10px 0px" class="fa fa-shopping-cart mx-2 text-warning"></i>
              </form>
            </div>
          </nav>
    </div>
    <div class="banner"></div>
    <div class="product">
	    <div class="container">
	    	<div class="title text-center">
	    		<span class="text-white">PRODUCT</span>
	    	</div>
	      <div class="row">
	        <div class="col-3">
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
	        </div>
	        <div class="col-9">
	          <div class="row content">
		          <c:forEach var = "i" begin = "1" end = "6">
			        <div class="col-4 item ">
		              <div class="card">
		                <img class="card-img-top img-fluid"
		                  src="https://media-cdn.tripadvisor.com/media/photo-s/19/79/8f/27/r-t-ngon-very-well.jpg"
		                  alt="Card image cap">
		                <div class="card-body">
		                  <p class="card-text">
		                    <a href="">Pizza</a>
		                    <p>kaddaddiaydaadas</p>
		                    <p class="text-right">100$</p>
		                  </p>
		                </div>
		                <div class="alert alert-danger text-center">
		                  <button class="btn btn-danger">Book</button>
		                </div>
		              </div>
		            </div>
			      </c:forEach>
	          </div>
	        </div>
	      </div>
	    </div>
  </div>
  <div class="footer bg-danger text-white">
    <div class="container">
      <div class="row">
        <div class="col-3">
          <h3>About</h3>
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium eius voluptatem cum cupiditate eveniet obcaecati saepe exercitationem, pariatur, iste, nemo ducimus culpa doloribus omnis temporibus excepturi id perspiciatis? Accusamus, ipsa.</p>
        </div>
        <div class="col-3">
          <h3>Infomation</h3>
          <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium eius voluptatem cum cupiditate eveniet obcaecati saepe exercitationem, pariatur, iste, nemo ducimus culpa doloribus omnis temporibus excepturi id perspiciatis? Accusamus, ipsa.</p>
        </div>
        <div class="col-3">
          <h3>Links</h3>
          <ul>
            <li><a href="">Home</a></li>
            <li><a href="">About</a></li>
            <li><a href="">Services</a></li>
            <li><a href="">Contact</a></li>
            
          </ul>
        </div>
        <div class="col-3">
          <h3>Contact</h3>
          <ul>
            <li><a href=""><i class="fa fa-home"></i> Linh Trung, Thu Duc</a></li>
            <li><a href=""><i class="fa-solid fa-phone"></i> 0338459799</a></li>
            <li><a href=""><i class="fa fa-envelope"></i> nl@gmail.com</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  
</body>
</html>