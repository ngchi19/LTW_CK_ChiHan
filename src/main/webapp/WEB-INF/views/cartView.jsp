
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
	
	<div style="background-color: #FFFFCC">
		<br> <br>
		<h3 style="width: 10%; margin: auto">Your cart</h3>
		<input type="hidden" name="tel" value="${loginedUser.tel}">
		<br> <br>
		<table class="table">
		<thead>
			<tr>
				<th scope="col">Select</th>
				<th scope="col">STT</th>
				<th scope="col">Name</th>
				<th scope="col">Amount</th>
				<th scope="col">Price</th>
				<th scope="col">Total</th>
				<th scope="col">Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="total" value="0"></c:set>
			<c:set var="nameProd" value=""></c:set>
			<c:set var="quantityProd" value=""></c:set>
			<c:set var="priceProd" value=""></c:set>
			<c:forEach items="${productUsertList}" var="cart" varStatus="counter">
				<c:set var="total" value="${total + cart.price * cart.quantity }"></c:set>
				<c:set var="nameProd" value="${cart.name}"></c:set>
				<c:set var="quantityProd" value="${cart.quantity}"></c:set>
				<c:set var="priceProd" value="${cart.price}"></c:set>
				
				<form method="GET" action="${pageContext.request.contextPath}/editProductUser">
				<input type="hidden" value="${loginedUser.tel}" name="tel"/>
				<input type="hidden" value="${cart.code}" name="code"/>
				<tr>
					<th><input type="checkbox"></th>
					<td><c:out value="${counter.count}"/></td>					
					<td>${cart.name}</td>
					<td>						
						<input type="text" name="quantity" value="${cart.quantity}" width="20px"> 
						<input class="btn btn-success" type="submit" value="Update"  />						
					</td>
					<td>${cart.price}</td>
					<td>
						<span>${cart.price * cart.quantity}</span>
						<%-- <input type="text" value="${cart.price * cart.quantity}"> --%>
					</td>
					<td>
						<a href="deleteProductUser?code=${cart.code}&tel=${loginedUser.tel}">
						<i class="fa fa-trash text-danger"></i></a>
					</td>
	
				</tr>

				</form>
			</c:forEach>
			
			
			<%-- <tr>
				<td colspan="5"></td>
				<td>Tổng tiền giỏ hàng: ${total }VNĐ</td>
			</tr> --%>
		</tbody>
		
	</table>
	<div style="text-align: right; margin-right:50px; font-size: 20px">Tổng tiền giỏ hàng: ${total }VNĐ</div>
	<div style="text-align: right; margin-right:50px">
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
		  Checkout
		</button>
		<%-- <a class="btn btn-success" href="${pageContext.request.contextPath}/checkout">Checkout</a> --%>
	</div>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Xác nhận đặt hàng</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <ul class="list-group mb-3">
        <c:forEach items="${productUsertList}" var="cart" varStatus="counter">
        	<li class="list-group-item d-flex justify-content-between lh-condensed">
	          <div>
	            <h6 class="my-0">${cart.quantity}x ${cart.name}</h6>
	            <%-- <small class="text-muted">${cart.name}</small> --%>
	          </div>
	          <span class="text-muted">${cart.price * cart.quantity}</span>
	        </li>
        	
        </c:forEach>
        <li class="list-group-item d-flex justify-content-end lh-condensed text-right">
        	Total: ${total }
        </li>
                
        <!-- <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Second product</h6>
            <small class="text-muted">Brief description</small>
          </div>
          <span class="text-muted">$8</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Third item</h6>
            <small class="text-muted">Brief description</small>
          </div>
          <span class="text-muted">$5</span>
        </li>
        <li class="list-group-item d-flex justify-content-between bg-light">
          <div class="text-success">
            <h6 class="my-0">Promo code</h6>
            <small>EXAMPLECODE</small>
          </div>
          <span class="text-success">-$5</span>
        </li>
        <li class="list-group-item d-flex justify-content-between">
          <span>Total (USD)</span>
          <strong>$20</strong>
        </li> -->
      </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <!-- <button type="button" class="btn btn-primary" data-dismiss="modal">Đặt</button> -->
        <a class="btn btn-primary" href="checkout?tel=${loginedUser.tel}">Đặt</a>
      </div>
    </div>
  </div>
</div>
	
		<br> 
		
		
		
		<br><br>
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		var rs=[];
		var tagBody = document.getElementById('tblBody');
		function layds(){
		    
		console.log(tagBody.rows[0]);
		     for (var i = 0; i < tagBody.rows.length; i++) {
		        var total=tagBody.rows[i].cells[4].innerHTML;
		        rs.push(total);
		    }
		console.log(rs); 
		}
		layds();
	</script>
</body>
</html>