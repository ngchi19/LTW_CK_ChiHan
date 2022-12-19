<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
      <jsp:include page="menu.jsp"></jsp:include>
	<div style="margin: 150px 0px" class="dk">
        <div class="container">
            <div class="">
                <!-- <div class="col-8"></div> -->
                <div style="width: 45%; margin:auto; border: 1px solid gray; padding: 80px 60px; margin-bottom: 50px" class="main">
                	<h2 class="text-center">Register</h2>
                	<p style="color: red;">${errorString}</p>
                   <form method="POST" action="${pageContext.request.contextPath}/createUserAcc" class=" form-group">
				      <div class="">
				        <label for="validationDefault01" class="form-label">Full Name *</label>
				        <input type="text" name="username" class="form-control" id="validationDefault01"  required>
				      </div>
				      <div class="">
				        <label for="validationDefault02" class="form-label">Phone Number *</label>
				        <input type="number" name="tel" class="form-control" id="validationDefault02" required>
				      </div>
				      <div class="">
				        <label for="validationDefaultUsername" class="form-label">Email *</label>
				        <div class="input-group">
				          
				          <input type="email" name="email" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required>
				        </div>
				      </div>
				      <div class="">
				        <label for="validationDefault03" class="form-label">Password *</label>
				        <input type="password" name="pass" class="form-control" id="validationDefault03" required>
				      </div>
				      
				      
				      <div class="">
				        <div class="form-check">
				          <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
				          <label class="form-check-label" for="invalidCheck2">
				            Agree to terms and conditions *
				          </label>
				        </div>
				      </div>
				      <div class="text-center mt-2">
				        <button class="btn btn-danger col-12" type="submit">Register</button>
				      </div>
 						 
 				</form>
                    	
                    <hr>
                    <h4 class="text-center">Or Register by</h4>
                    <div class="row text-center">
                        <div class="col-6">
                            <button class="btn btn-primary">Facebook</button>
                        </div>
                        <div class="col-6">
                            <button class="btn btn-outline-primary">Google</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>