<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<!-- <meta http-equiv="refresh" content="0; URL=./onLoad" /> -->
<title>Insert title here</title>
</head>
<body>
	<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a href=${category.name} > ${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">
						<li><a href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
					</c:forEach>
				</ul></li>
		</c:forEach>
	</ul>
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
				</tr>
			</table>
		</c:if>
</body>
</html>