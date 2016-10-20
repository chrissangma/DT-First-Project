<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:url value="/resources/img" var="image"></spring:url> 
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
     
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="site-branding-area" style="background-image: url('<c:url value="/resources/img/collage.jpg"/>');">
        <div class="container">
            <div class="row" >
               
             <div class="col-sm-8">
                    <div class="logo">
                        <h1 style="font-size:400%;color:green;"><a href="./"><img src="<c:url value="/resources/img/newlogo.gif"/>"></a>Authentic Frames</h1>
                        </div>
                       
                </div>
                
                <div class="col-sm-4">
                    <div class="shopping-item">
                        <a href="myCart">Cart - <span class="cart-amunt">$100</span> <i class="fa fa-shopping-cart"></i> ${cartsize}</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
<div id ="displayCart">
	<c:if test="${displayCart==true}">
	       
			<table>
				<tr>
					<!--  <th align="left" width="80">Cart ID</th>-->
					<th align="left" width="120">Product Name</th>
					<!--  <th align="left" width="200">Quantity</th>-->
					<th align="left" width="80">Price</th>
					<th align="left" width="60">Delete from Cart</th>
					<!--  <th align="left" width="60">Pay</th>-->
					<!--  <th align="left" width="60">EDIT</th>-->

				</tr>
				<c:forEach items="${cartList}" var="cart">
				<tr>
					<!--  <td align="left" >${cart.id}</td>-->
					 <td align="left" >${cart.productName}</td>
					<!-- <td align="left" >${cart.quantity}</td>-->
					<td align="left" >${cart.price}</td>
					<td align="left" ><a href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
						<!--  <td align="left" ><a href="<c:url value='pay/${cart.id}' />"> Proceed</a> </td>-->
						<!--  <td align="left"><a href="#">Edit</a></td>-->
				</tr>
				</c:forEach>
					
			</table>
			</c:if>
			</div>
	   <br>
	   <c:if test="${!empty name}">
	   <p><a href="<c:url value='home/${name}'/>"style="color:red;">ADD MORE</a><p>
	   </c:if>
	   <p><a href="<c:url value='pay'/>"style="color:red;">PROCEED</a><p>
</body>
</html>