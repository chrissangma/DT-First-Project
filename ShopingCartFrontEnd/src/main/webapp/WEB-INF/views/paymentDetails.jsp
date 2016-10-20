<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('<c:url value="/resources/img/040714121422_2707.jpg"/>')">
<h1 align="center">Payment Details</h1>
<h2 align="center">Total amount:${sum}</h2>
<br>

<div>
<h4>Please enter your Shipping details </h4> <br><br>

<form:form action="ship"  method="post">
		<table>
			<tr>
				<td>name</td>
				<td><input type="text" name="name">
			
				</td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>contact number</td>
				<td><input type="text" name="contact"></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>address line 1</td>
				<td><input type="text" name="ad1"></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>address line 2</td>
				<td><input type="text" name="ad2"></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="mail"></td>
			</tr>
			<br>
			<tr>
				<td>city</td>
				<td><input type="text" width="20" height="10" name="city"></td>
			</tr>
			
			<tr>
				<td>state</td>
				<td><input type="text" width="20" height="10" name="state"></td>
			</tr>
			<tr>
				<td>zip code</td>
				<td><input type="text" width="20" height="10" name="zip"></td>
			</tr>
			
			

			<tr>
				<td><input type="submit" value="Register">
				</td></br>
				<td><input type="reset" value="Reset">
				</td>
				<br>
			</tr>
			
		</table>

	</form:form>  

</div>
</ul>
</body>
</html>