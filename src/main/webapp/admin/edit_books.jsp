<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.entinty.BookDtls"%>
<%@ page import="com.DAo.BookDAoImpl"%>
<%@ page import="com.DB.DBConnect"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:addbooks</title>
<%@include file="all_css.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="Navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>


						<%
						int id = Integer.parseInt((request.getParameter("id")));
						BookDAoImpl dao = new BookDAoImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						%>


						<form action="../edit_books" method="post">
							<input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="bname"
									aria-describeddy="emailHelp" value=<%=b.getBookName()%>>

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="author"
									aria-describeddy="emailHelp" value=<%=b.getAuthor()%>>

							</div>



							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="price"
									aria-describeddy="emailHelp" value=<%=b.getPrice()%>>

							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Book Status</label> <select
									name="status" class="form-control" required="required">
									<option value="Active"
										${"Active".equals(b.getStatus()) ? "selected" : ""}>Active</option>
									<option value="Inactive"
										${"Inactive".equals(b.getStatus()) ? "selected" : ""}>Inactive</option>
								</select> </select>
							</div>

							<button type="submit" class="btn btn-primary">Update</button>
						</form>


					</div>
				</div>
			</div>
		</div>

	</div>
	<div style="margin-top: 200px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>