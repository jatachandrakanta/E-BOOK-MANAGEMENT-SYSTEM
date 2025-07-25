<%@page import="com.entinty.user"%>
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

/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */


</style>
</head>
<body>

	<%
	user u = (user) session.getAttribute("userobj");
	%>
<c:if test="${not empty addCart }">

<div id="toast">${addCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
<c:remove var="addCart" scope="session"></c:remove>
</c:if>



	<%@include file="all_component/Navbar.jsp"%>
	<div class="container-fluids">
		<div class="row p-3">
			<%
			String ch=request.getParameter("ch");
			BookDAoImpl dao2 = new BookDAoImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getBookBySearch(ch);
			for (BookDtls b : list2)

			{
			%>
			<div class="col-md-3">
				<div class="card crd-ho ">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							<%
							if (b.getBookCategory().equals("old")) {
							%>


							Categories:<%=b.getBookCategory()%></p>
						<div class="row1">
							<a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-3">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
								<i class="fas fa-rupee-sign"></i></a>

						</div>
						<%
						} else {
						%>
						Categories:<%=b.getBookCategory()%></p>
						<div class="row1">
						
						
																			<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add
								Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm"><i
								class="fa-solid fa-cart-plus"></i>Add Cart</a>

							<%
							}
							%>
						<a href="view_book.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm  ">View Details</a><a
								href="" class="btn btn-danger btn-sm "><%=b.getPrice()%><i
								class="fas fa-rupee-sign"></i></a>

						</div>
						<%
						}
						%>
						</p>


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