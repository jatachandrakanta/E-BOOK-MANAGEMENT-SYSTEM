<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderSuccessfully</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container text-center mt-3">
		<i class="fas fa-check-circle fa-5x text-success"></i>
		<h1>Thank you</h1>
		<h2>Your Order Successfully</h2>
		<h5>With in 7 Days Your Product will be Delivered In your Address</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a> <a
			href="order.jsp" class="btn btn-danger mt-3">View Order</a>
	</div>
</body>
</html>