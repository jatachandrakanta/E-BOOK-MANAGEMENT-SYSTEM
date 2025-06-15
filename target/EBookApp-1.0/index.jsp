<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Index</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/bookback.webp");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
.crd-ho:hover{
background-color"#fcf7f7";
}
</style>
</head>
<body  style="background-color:#f7f7f7">
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">EBook Management System</h2>
	</div>
	<% Connection conn=DBConnect.getConn();
	out.println(conn);
	%>
	
<!-- recent book start-->
	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
							 <a href=""class="btn btn-success btn-sm ml-1">View</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
			
			
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							 <a href=""class="btn btn-success btn-sm ml-1">View</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
			
			
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							 <a href=""class="btn btn-success btn-sm ml-1">View</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
			
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
							 <a href=""class="btn btn-success btn-sm ml-1">View</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
		</div>
		<div class="text-center mt-1">
		
		<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
		
	</div>
	
	
	<!-- recent book end-->
	
	<hr></hr>
	<!-- old book start -->
	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							 <a href=""class="btn btn-success btn-sm ml-1">View Details</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
			
			
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							 <a href=""class="btn btn-success btn-sm ml-1">View Details</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
			
			
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
				
							 <a href=""class="btn btn-success btn-sm ml-1">View Details</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
			
						<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javabook1.jpg" style="width: 150px; height:200px"
							class="img-thumblin">
						<p>Java Programming</p>
						<p>Dr.R.Nageswar Rao</p>
						<p>Categories:New</p>
						<div class="row1">
							 <a href=""class="btn btn-success btn-sm ml-1">View Details</a>
							  <a href="" class="btn btn-danger btn-sm ml-1">299</a>

						</div>
					</div>
					
					

				</div>
			</div>
		</div>
		<div class="text-center mt-1">
		
		<a href="" class="btn btn-danger btn-sm text-white">View All</a>
		</div>
		
	</div>
	<!-- old book end-->
	
	<%@include file="all_component/footer.jsp" %>
</body>
</html>