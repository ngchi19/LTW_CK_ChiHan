<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="dk">
		<div class="container">
			<div class="row">
				<div class="col-8"></div>
				<div class="col-4 main">
					<h2 class="text-center">Login</h2>
					<form method="POST"
						action="${pageContext.request.contextPath}/loginUser">
						<div class="">
							<label for="validationDefault02" class="form-label">Phone Number</label>
							<input type="text" class="form-control" id="validationDefault02"
								name="tel" value="${user.userName}" required>
						</div>
						<div class="">
							<label for="validationDefault03" class="form-label">Password</label>
							<input type="password" name="password" value="${user.password}"
								class="form-control" id="validationDefault03" required>
						</div>
						<span>Remember me</span> <input type="checkbox" name="rememberMe" value= "Y" /> <br>
						<input type="submit" value= "Login" />
                  		<a href="${pageContext.request.contextPath}/">Cancel</a>
						<!-- <div class="text-center mt-2">
							<button class="btn btn-danger col-12" type="submit">Login</button>
						</div> -->
					</form>
					<hr>
					<h3></h3>
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

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>