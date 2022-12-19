<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	 <%-- <jsp:include page="header.jsp"></jsp:include> --%>
	<jsp:include page="menu.jsp"></jsp:include>

	<h3 style="display: inline">Hello: ${user.userName}</h3>
	<p>Email: ${user.email }</p>
	<%-- <a class="btn btn-outline-warning mx-2" href="${pageContext.request.contextPath}/logout">Logout</a> --%>

	<a class="btn btn-success" href="${pageContext.request.contextPath}/productList">Chỉnh sửa thông tin sản phẩm</a>
	
	<%--  <jsp:include page="productListView.jsp"></jsp:include> --%>
</body>
</html>