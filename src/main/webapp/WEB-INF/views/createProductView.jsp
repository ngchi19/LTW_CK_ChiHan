<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Product</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div style="background-color: #FFFFCC">
		<br> <br>
		<h3 style="width: 70%; margin: auto">Create Product</h3>
		<br>
		<p style="color: red; width: 50%; margin: auto">${errorString}</p>

		<div class="w-50 mx-auto">
			<form style="width: 100%; margin: auto" method="POST" action="${pageContext.request.contextPath}/createProduct">
				<table class="table">
					<tr>
						<td><b>Code</b></td>
						<td><input style="width: 600px; height:30px" type="text" name="code" value="${product.code}" /></td>
					</tr>
					<tr>
						<td><b>Name</b></td>
						<td><input style="width: 600px; height:30px" type="text" name="name" value="${product.name}" /></td>
					</tr>
					<tr>
						<td><b>Price</b></td>
						<td><input style="width: 600px; height:30px" type="text" name="price" value="${product.price}" /></td>
					</tr>
					<tr>
						<td><b>Description</b></td>
						<%-- <td><input style="width: 600px; height:30px" type="text" name="description" value="${product.description}" /></td> --%>
						<td><textarea style="width: 600px"; rows="10" class="w-100" type="text" name="description" value="" />${product.description}</textarea></td>
					</tr>
					<tr>
						<td><b>Img</b></td>
						<td><input style="width: 600px; height:30px" type="text" name="img" value="${product.img}" /></td>
					</tr>
					<input type="hidden" name="quantity" value=1>
				</table>
				<hr>
				<tr>
						<td colspan="2">
							<input class="btn btn-success" type="submit" value="Create" />
							<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/productList">Cancel</a>
						</td>
					</tr>
			</form>
		</div>
		<br> <br>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>