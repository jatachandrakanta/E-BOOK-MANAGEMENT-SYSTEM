<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:addbooks</title>
<%@include file="all_css.jsp"%>
</head>
<body style="background-color:#f0f2f2">
	<%@include file="Navbar.jsp"%>
	
	
		<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center">Add Books</h4>
					<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg}</p>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					
						<c:if test="${not empty failedMsg }">
					<p class="text-center text-danger">${failedMsg}</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
						<form action="../addbooks" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="bname" aria-describeddy="emailHelp">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="author"  aria-describeddy="emailHelp">

							</div>



							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="price"  aria-describeddy="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Categories</label> <select
								 class="form-control" id="inputState"
									required="required" name="categories">
									<option selected>--select--</option>
									<option value="new">New Book</option>
									</select>
							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Book Status</label> <select
								 class="form-control" id="inputState"
									required="required" name="status">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
									</select>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Upload Photo</label> <br><input
								 class="form-control-dile" id="exampleFormControlFile1"
									required="required" name="bimg" type="file"/>
							</div>
							
							<button type="submit" class="btn btn-primary">Add</button>
						</form>


					</div>
				</div>
			</div>
		</div>

	</div>
	<div style="margin-top:200px;">
	<%@include file="footer.jsp" %>
	</div>
</body>
</html>