<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>

<script>

    var app = angular.module('myapp', []);
    
    function MyController($scope, $http){
                $scope.getProduct = function() {        
        
            $http({method: 'GET', url: 'angular'}).
            success(function(data, status, headers, config) {
        
                $scope.mdata = data;
            }).
            error(function(data, status, headers, config) {
              // called asynchronously if an error occurs
              // or server returns response with an error status.
            });
        
        };
    };
</script>

</head>

<body>

<form>
<div class="form-group">
<div class="input-group">
<div class="input-group-addon">
<i class="fa fa-search"></i>
</div>
<input type="text" class="form-control" placeholder="Search the name" ng-model="na"/>
</div>
</div>
</form>

<div data-ng-app="myapp">
        <div data-ng-controller="MyController" data-ng-init="getProduct()" >
			<div class="table-responsive">
<%String values=request.getParameter("value"); %>
<%if(values.equals("val1"))
{%>

<table class="display table">
<thead>  
          <tr>  
            <th>PRODUCT ID</th>  
            <th>PRODUCT NAME</th>  
            <th>PRODUCT DESCRITION</th> 
            <th>PRICE</th>
             <th>DESC</th>
             <th>CATEGORY</th>
             <th>SUPPLIER</th>
            
          </tr>  
        </thead>  
        <tbody>  
          <tr ng-repeat="c in mdata | filter:byname">
          <td>{{c.id}}</td>
          <td>{{c.name}}</td>
          <td>{{c.description}}</td>
          <td>{{c.price}}</td>
          <td><a href="addtocart?id={{c.productId}}">moredetails</a></td>
          <td>{{c.category_id}}</td>
          <td>{{c.supplier_id}}</td>
          
          
          <!-- <td><a href="angularpagedetails?id={{c.productId}}">delete</a></td>
          <td><a href="edit?id={{c.productId}}">update</a></td> -->
          </tr>
</tbody>
</table>
</div>
         
        </div>
    </div>
    <%} 


if(values.equals("val2"))
{%>
<div data-ng-app="myapp">
        <div data-ng-controller="MyController" data-ng-init="getProduct()" >
        <div class="table-responsive">

<table class="display table">
<thead>  
          <tr>  
            <th>PRODUCT ID</th>  
            <th>PRODUCT NAME</th>  
            <th>PRODUCT PRICE</th> 
            <th>MANUFACTURER</th>
            <th>DESC</th>
          </tr>  
        </thead>  
        <tbody>  
          <tr ng-repeat="c in mdata | filter:byname">
          <td>{{c.productId}}</td>
          <td>{{c.productName}}</td>
          <td>{{c.productprice}}</td>
          <td>{{c.manufacturer}}</td>
          <td><a href="addtocart?id={{c.productId}}">moredetails</a></td>
          <!-- <td><a href="angularpagedetails?id={{c.productId}}">delete</a></td>
          <td><a href="edit?id={{c.productId}}">update</a></td> -->
          </tr>
</tbody>
</table>
</div>
</div> 
<%} 


if(values.equals("val3"))
{%>
<div data-ng-app="myapp">
        <div data-ng-controller="MyController" data-ng-init="getProduct()" >
<div class="table-responsive">

<table class="display table">
<thead>  
          <tr>  
            <th>PRODUCT ID</th>  
            <th>PRODUCT NAME</th>  
            <th>PRODUCT PRICE</th> 
            <th>MANUFACTURER</th>
             <th>DESC</th>
          </tr>  
        </thead>  
        <tbody>  
          <tr ng-repeat="c in mdata | filter:byname">
          <td>{{c.productId}}</td>
          <td>{{c.productName}}</td>
          <td>{{c.productprice}}</td>
          <td>{{c.manufacturer}}</td>
          <td><a href="addtocart?id={{c.productId}}">moredetails</a></td>
          <!-- <td><a href="delete?id={{c.productId}}">delete</a></td>
          <td><a href="edit?id={{c.productId}}">update</a></td> -->
          </tr>
</tbody>
</table>
</div>
</div> 
<%} 
%>

</body>
</html>