<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<!-- <meta http-equiv="refresh" content="0; URL=./onLoad" /> -->
<spring:url value="resources/menu.css" var="menuCSS" />
<link href="${menuCSS}" rel="stylesheet" />
<title>Shopping Cart</title>





>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<style>

/* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 20px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
background-image: #ff6541;


      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #ff6541;
      padding: 15px;
  
    }
    
    .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 20%;
      margin:auto;
  }
    
    
    
  </style>
</head>
<body>

<header class="header">

<p class=toy> Online store for BIKES AND CARS</p>



<%@include file="Header.jsp" %>

<!-- coursel code -->>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value="/resources/images/gtr3.jpg" />" alt="Tash" width="100" height="100">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/gtr4.jpg" />" alt="Chania" alt="driller" width="100" height="100">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img_flower.jpg" alt="Flower" width="100" height="100">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/gtr5.jpg" />" alt="Knight Charm" width="100" height="100">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
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



<!-- coursel code end -->>


<body background="<c:url value="/resources/images/gtr9.jpg" />" >


<div>
	<table width="100%">
		<tr>
			<td>Exist user <a href="login.jsp"> Login here</a> <br></td>
			<td align="center">New user<a href="register">
					Register here</a></td>
			<td align="right"> <a href="myCart">  My Cart  </a>( ${cartSize} )</td>
			
			
		</tr>
	</table>
</div>

	<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a style="color:blue;" href=${category.name} > ${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">
						<li><a style="background-color:#00FF00" href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
					</c:forEach>
				</ul></li>
		</c:forEach>
	</ul>

</div>

<div>
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
         			
						</tr>
			</table>
		</c:if>
		
		 
    <!--    	<FORM action="home.jsp" method="post"> 
			<INPUT TYPE="SUBMIT" VALUE="Home"> 
		</FORM> -->

	<br>
</div>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">jackpot deal</div>
        <div class="panel-body"><img src="https://static.pexels.com/photos/2394/lights-clouds-dark-car.jpg" class="img-responsive" style="width:100%" alt="Image">
        </div>
        <a href="#" class="btn btn-info btn-lg" role="button">Buy</a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Big deal offer</div>
        <div class="panel-body"><img src="http://r.hswstatic.com/w_907/gif/10-fastest-cars-in-the-world-1.jpg" class="img-rounded" style="width:100%" alt="Image">
</div>
<a href="#" class="btn btn-info btn-lg" role="button">Buy</a>
</div>
        
      </div>
        <div class="panel-footer"></div>

      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://www.rainbowskill.com/wp-content/uploads/2010/10/ssc-ultimate-aero-ii.jpg" style="width:80%" alt="Image"></div>
        <div class="panel-footer">Buy </div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://im.rediff.com/money/2013/feb/06car1.jpg" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="http://static.sify.com/cms/image/khhse2acfdcsi.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://s-media-cache-ak0.pinimg.com/564x/96/08/a9/9608a9c02b2935108bd1ef18293a6d95.jpg" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy</div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

	
	
		
		
		
		
		
		
		


</body>
</html>