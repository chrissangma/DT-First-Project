<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%--  <%@include file="Header.jsp" %>
 --%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>

<div>
		<a href="home"> Home</a>   <br>
		</div>
<body>
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					<th align="left" width="200">Add to Cart</th>
					
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
					<td><a href="<c:url value='/cart/add/${selectedProduct.id}' />">add to cart</a></td>
         			<td><a href="<c:url value='/cart/add/${product.id}' />">add product</a></td>
						</tr>
			</table>
		</c:if>
		
		 
    <!--    	<FORM action="home.jsp" method="post"> 
			<INPUT TYPE="SUBMIT" VALUE="Home"> 
		</FORM> -->

	<br>
</body>
</html>