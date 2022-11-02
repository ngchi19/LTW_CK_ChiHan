<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body >
	<div class="dk" >
        <div class="container">
            <div class="row">
                <div class="col-8"></div>
                <div class="col-4 main" >
                	<h2 class="text-center">Register</h2>
                	
                   <form class=" form-group">
				      <div class="">
				        <label for="validationDefault01" class="form-label">Full Name *</label>
				        <input type="text" class="form-control" id="validationDefault01"  required>
				      </div>
				      <div class="">
				        <label for="validationDefault02" class="form-label">Phone Number *</label>
				        <input type="number" class="form-control" id="validationDefault02" required>
				      </div>
				      <div class="">
				        <label for="validationDefaultUsername" class="form-label">Email *</label>
				        <div class="input-group">
				          
				          <input type="email" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required>
				        </div>
				      </div>
				      <div class="">
				        <label for="validationDefault03" class="form-label">Password *</label>
				        <input type="password" class="form-control" id="validationDefault03" required>
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