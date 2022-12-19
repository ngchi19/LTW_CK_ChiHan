<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	<div style="margin: 150px 0px">
		<h3>Product List</h3>

		<p style="color: red;">${errorString}</p>


		<div class="w-75 mx-auto">
			<a class="btn btn-primary" href="createProduct">Create Product</a>
			<table class="table">
				<thead>
					<tr>
						<th>Code</th>
						<th>Name</th>
						<th>Price</th>
						<th>Description</th>
						<th>Img</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${productList}" var="product">
						<tr>
							<td style="color: red">${product.code}</td>
							<td>${product.name}</td>
							<td>${product.price}</td>
							<td>${product.description}</td>
							<td>${product.img}</td>
							<td><a href="editProduct?code=${product.code}"><i
									class="fa fa-edit"></i></a></td>
							<td><a href="deleteProduct?code=${product.code}"><i
									class="fa fa-trash"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>





	<!--  <jsp:include page="footer.jsp"></jsp:include> -->
</body>
</html>