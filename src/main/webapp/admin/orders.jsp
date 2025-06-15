<%@page import="com.DB.DBConnect"%>
<%@page import="com.entinty.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAo.BookOrderDAoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Orders</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="Navbar.jsp"%>
		<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	
	</c:if>
	
	
	<h3 class="text-center">Heloo Admin</h3>
	<table class="table table-striped ">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col"> Order Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Ph No</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment type</th>
			</tr>
		</thead>
		<tbody>
		<%
		BookOrderDAoImpl dao=new BookOrderDAoImpl(DBConnect.getConn());
		List<Book_Order>blist=dao.getAllOrder();
		for(Book_Order b:blist){
			%>
		
		
	
			<tr>
				<th scope="row"><%=b.getOredeId() %></th>
				<td><%=b.getUserName() %></td>
				<td><%=b.getEmail() %></td>
				<td><%=b.getFulladd() %></td>
				<td><%=b.getPhno() %></td>
				<td><%=b.getBookName() %></td>
				<td><%=b.getAuthor() %></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getPaymentType() %></td>
				
			</tr>
			<%
			}
		
		%>
	
		</tbody>
	</table>
	<div style="margin-top:20px;">
	<%@include file="footer.jsp" %>
	</div>
</body>
</html>