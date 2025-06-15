<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body"></div>
				</div>
			</div>
		</div>

	</div>
	<div style="margin-top:20px;">
	<%@include file="footer.jsp" %>
	</div>
</body>
</html>