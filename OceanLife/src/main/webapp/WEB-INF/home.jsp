<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ocean Life</title>

<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />
	
	<div class="container-fluid">
	<h1>Ocean Life Encyclopedia</h1>
	
	<form action="searchFish.do" method="GET">
		<div class="row">
			Search by keyword:<br>
			 <input class="col form-control" type="text" name="searchTerm" />
			<input class="col btn btn-success" type="submit" value="search" />
		</div>
	</form>
	
 <a href="goToAddFish.do"><button>Create a fish</button></a>

 
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

	<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>