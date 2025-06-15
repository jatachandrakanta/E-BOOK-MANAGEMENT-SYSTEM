<%@page import="com.entinty.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAo.BookDAoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>

<%@include file="all_component/all_css.jsp"%>
<style type="text/css">


.crd-ho:hover {background-color "#fcf7f7";
	
}
</style>
</head>
<body>
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container-fluids">
		<div class="row p-3">
			<%
			BookDAoImpl dao = new BookDAoImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getOldBooks();

			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p><%=b.getBookCategory()%></p>
						<div class="row1">
						<a href="view_book.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a><a
								href="" class="btn btn-danger btn-sm "><%=b.getPrice()%><i
								class="fa-solid fa-indian-rupee-sign"></i> 
								</a>

						</div>
					</div>



				</div>
			</div>
			<%
			}
			%>
			
			
		</div>

	</div>
</body>
</html>