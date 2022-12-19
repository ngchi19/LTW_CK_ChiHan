<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<%-- <h3>Login Page</h3>
      <p style="color: red;">${errorString}</p>


      <form method="POST" action="${pageContext.request.contextPath}/login">
         <table border="0">
            <tr>
               <td>User Name</td>
               <td><input type="text" name="userName" value= "${user.userName}" /> </td>
            </tr>
            <tr>
               <td>Password</td>
               <td><input type="text" name="password" value= "${user.password}" /> </td>
            </tr>
            <tr>
               <td>Remember me</td>
               <td><input type="checkbox" name="rememberMe" value= "Y" /> </td>
            </tr>
            <tr>
               <td colspan ="2">
                  <input type="submit" value= "Submit" />
                  <a href="${pageContext.request.contextPath}/">Cancel</a>
               </td>
            </tr>
         </table>
      </form>

      <p style="color:blue;">User Name: tom, password: tom001 or jerry/jerry001</p> --%>
	<div style="margin: 150px 0px" class="dk">
		<div class="container">
			<div class="">
				<!-- <div class="col-8"></div> -->
				<div style="width: 45%; margin:auto; border: 1px solid gray; padding: 80px 60px" class="main">
					<h2 class="text-center">Login</h2>
					<p style="color: red;">${errorString}</p>
					<form method="POST"
						action="${pageContext.request.contextPath}/login">
						<div class="">
							<label for="validationDefault02" class="form-label">Tel</label>
							<input type="text" class="form-control" id="validationDefault02"
								name="tel" value="${user.tel}" required>
						</div>
						<div class="">
							<label for="validationDefault03" class="form-label">Password</label>
							<input type="password" name="password" value="${user.password}"
								class="form-control" id="validationDefault03" required>
						</div>
						<span>Remember me</span> <input type="checkbox" name="rememberMe" value= "Y" /> <br>
						<div style="text-align:center">
							<button type="submit" class="btn btn-success">Login</button>
                  			<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/">Cancel</a>
						</div>
						
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