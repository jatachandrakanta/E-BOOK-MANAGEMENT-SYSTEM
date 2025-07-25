<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
a{
text-decoration:none;
color:block;
}
a:hover{
text-decoration:none;
}
</style>
</head>
<body style="background-color: #f7f7f7">

<c:if test="${empty userobj}">
<c:redirect url="login.jsp"/>
</c:if>
	<%@include file="all_component/Navbar.jsp"%>


	<div class="container">
	
		<h3 class="text-center">Heloo,${userobj.name} </h3>
		<div class="row p-5">
			<div class="col-md-4">
				<a href="Sell.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary"><i class="fas fa-book-open fa-3x"></i></div>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>
					<div class="col-md-4">
				<a href="oldbook.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary"><i class="fas fa-book-open fa-3x"></i></div>
							<h3> Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			
			
						<div class="col-md-4">
				<a href="Edit_Profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary"><i class="fas fa-edit fa-3x"></i></div>
							<h3>Edit Profile</h3>
						</div>
					</div>
				</a>
			</div>
			
			
			
						<div class="col-md-6 mt-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class=" text-danger"><i class="fas fa-box-open fa-3x"></i></div>
							
						</div>
						<h4 class="text-center">My Order</h4>
						<p class="text-center">Track Your Order</p>
						
					</div>
				</a>
			</div>
			
						<div class="col-md-6 mt-3">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class=" text-primary"><i class="fas fa-user-circle fa-3x"></i></div>
						
						</div>
						<h4 class="text-center">Help Center</h4>
						<p class="text-center">24 * 7 Service</p>
						
					</div>
				</a>
			</div>
		</div>
	</div>
	
		<%@include file="all_component/footer.jsp"%>
</body>
</html>