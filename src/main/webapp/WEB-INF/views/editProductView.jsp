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
		<h3>Edit Product</h3>

	<p style="color: red;">${errorString}</p>

	<c:if test="${not empty product}">
		
		<div class="w-50 mx-auto">
			<form method="POST"
				action="${pageContext.request.contextPath}/editProduct">
				<input type="hidden" name="code" value="${product.code}">

				<table class="table">
					<tr>
						<td><b>Code</b></td>
						<td class="w-100" style="color: red;">${product.code}</td>
					</tr>
					<tr>
						<td><b>Name</b></td>
						<td><input class="w-100" type="text" name="name" value="${product.name}" /></td>
					</tr>
					<tr>
						<td><b>Price</b></td>
						<td><input class="w-100" type="text" name="price" value="${product.price}" /></td>
					</tr>
					<tr>
						<td><b>Description</b></td>
						<td><textarea rows="10" class="w-100" type="text" name="description" value="" />${product.description}</textarea></td>
					</tr>
					<tr>
						<td><b>Img</b></td>
						<td><input type="text" class="w-100" name="img" value="${product.img}" /></td>
					</tr>
					<tr>
						<td colspan="2"><input class="btn btn-success"  type="submit" value="Update" />
						<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/productList">Cancel</a>
						</td>
					</tr>
				</table>

			</form>

		</div>



	</c:if>
	</div>
	

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>