<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="menu.jsp"></jsp:include>

    <h3>UserAcc List</h3>

    <p style="color: red;">${errorString}</p>

    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>FullName</th>
          <th>Phone</th>
          <th>Email</th>
          <th>Pass</th>
          <!-- <th>Edit</th>
          <th>Delete</th> -->
       </tr>
       <c:forEach items="${userAccList}" var="userAcc" >
          <tr>
             <td>${userAcc.username}</td>
             <td>${userAcc.tel}</td>
             <td>${userAcc.email}</td>
             <td>${userAcc.pass}</td>
             <%-- <td>
                <a href="editProduct?code=${product.code}">Edit</a>
             </td>
             <td>
                <a href="deleteProduct?code=${product.code}">Delete</a>
             </td> --%>
          </tr>
       </c:forEach>
    </table>

    <a href="createProduct" >Create Product</a>
</body>
</html>