<%@page import="java.util.List"%>
<%@page import="com.entinty.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAo.BookDAoImpl"%>
<%@page import="com.entinty.user"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Old Book</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/Navbar.jsp"%>
	<c:if test="${not empty succMsg }">
		<div class="alert alert-success text-center">
				<p class="text-center text-success">${succMsg}</p>
		</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<div class="container p-5">
		<table class="table table-striped ">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>


				</tr>
			</thead>
			<tbody>

				<%
				user u = (user) session.getAttribute("userobj");
				String email = u.getEmail();
				BookDAoImpl dao = new BookDAoImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls b : list) {
				%>
				<tr>

					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><a href="delete_old_book?em=<%=email%> && id=<%=b.getBookId() %>"
						class="btn btn-sm btn-danger">Delete</a></td>

				</tr>

				<%
				}
				%>



			</tbody>
		</table>

	</div>
</body>
</html>