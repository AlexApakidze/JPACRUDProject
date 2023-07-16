<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>

<jsp:include page="bootstrapHead.jsp" />

</head>
<body>
<jsp:include page="navbar.jsp" />
<div class="container-fluid">
<h1>Results:</h1>
	<table class="table table-striped table-hover">
		<thead class="table-dark">
		<tbody>
			<c:forEach var="fish" items="${fishList}">
				<tr>
					<td><a href="getFish.do?fishId=${fish.id}"> ${fish.name}</a></td>
					<td><img src="${fish.imageUrl}"  alt="${fish.name}"  width="300"
						height="200"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	</div>
	 <a href="home.do">Back to Home</a>
	<jsp:include page="bootstrapFoot.jsp"/>
	
</body>
</html>