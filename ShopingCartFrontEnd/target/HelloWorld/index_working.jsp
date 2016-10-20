<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<%@include file="Header.jsp" %>
<body background="<c:url value="/resources/images/background2.jpg" />" >


<div class="container">
	<div class="row">
		<div class="col-sm-4">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value="/resources/images/image3.jpg"/>"  alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for 20000</h3>
						<p>iPhone</p>
					</div>      
				</div>
		
				<div class="item">
					<img src="<c:url value="/resources/images/image2.jpg"/>"  alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for Rs.9990</h3>
						<p>Sony</p>
					</div>      
				</div>
		
				<div class="item">
					<img src="<c:url value="/resources/images/image1.jpg"/>"  alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for 5000</h3>
						<p>Buy 1 get 1 free</p>
					</div>      
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div class="col-sm-3">
			<button type ="button" class="btn-btn-info  btn-md">Hot Deals </button>
			<hr>
			<button type ="button" class="btn-btn-info  btn-md">Easy EMI options - Buy now Pay later </button>
			<hr>
			<button type ="button" class="btn-btn-info  btn-md">Attractive Exchange Offers</button>
			<hr>
			<button type ="button" class="btn-btn-info  btn-md">New Arrivals </button>
	</div>

	<div class="col-sm-4">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value="/resources/images/image20.jpg"/>" alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3 class="bg-danger">Buy for 5000</h3>
						<p class="bg-danger">Buy 1 get 1 free</p>
					</div>      
				</div>
		
				<div class="item">
					<img src="<c:url value="/resources/images/image19.jpg"/>" alt="Image" width="152" height="118">
					<div class="carousel-caption">
						<h3>Buy for Rs.9990</h3>
						<p>Sony</p>
					</div>      
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	</div>
		<hr>
	</div>

</div> 
<div class="container ">    
	<ul class="text-left"> <h3>Latest models</h3>
	<ul class="text-right">	<h3> Feedbacks </h3>

	<br>
	<div class="row">
		<div class="col-sm-3">
			<img src="<c:url value="/resources/images/multiple_companies.png"/>" class="img-responsive" style="width:100%" alt="Image">
		</div>
		<div class="col-sm-3"> 
			<img src="<c:url value="/resources/images/image_Best_Buy_Smart_phones.png"/>" class="img-responsive" style="width:100%" alt="Image">
		</div>
		<div class="col-sm-3">
			<div class="well">
				<p><h6>I bought the mobile from VIJAI mobiles for 50% off in 2012. Still it is working fine. Great website to buy mobiles - Ram	</h6> </p>
			</div>
			<div class="well">
				<p> <h6>I ordered the mobile on monday. The next day itself I received the mobile. Unbelievable service - Ragoth </h6> </p>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="well">
				<p> <h6>The packaging of the phone was very good. I recommend this site for my friends-Vyas</h6> </p>
			</div>
			<div class="well">
				<p><h6>No websites can sell as cheap as VIJAI mobiles. The most trusted website by the customers-Ganguly</h6> </p>
			</div>
		</div>  
	</div>
	<hr>
</div>
<footer class="container-fluid text-center">
					<p class="bg-danger"><h3>Number 1 Website for Selling mobiles for the past 10 years</h3> </p>
					<p class="bg-danger" > <h2>Got the award for best seller from Mobile Associations of India</h2></p>
</footer>
</body>
</html>