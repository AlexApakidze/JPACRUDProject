<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="../bootstrapHead.jsp" />

</head>
<body>

	<jsp:include page="../navbar.jsp" />


<div>

	  

    <form action="addFish.do" method="POST">
        
  <h2>Add a fish to the database:</h2>
		
		<label for="name">Name:</label><br>
		<input type="text" name="name"  ><br>

		<label for="imageUrl">Image URL:</label><br>
		<input type="text" name="imageUrl"><br>

		<label for="location">Locations:</label><br>
		<input type="text" name="location" ><br>

		<label for="specialAbilities">Cool Facts:</label><br>
		<input type="text" name="specialAbilities"><br>

		<label for="size">Size:</label><br>
		<input type="text" name="size" ><br>

		<label for="diet">Diet:</label><br>
		<input type="text" name="diet"><br>

		<label for="varities">Varieties:</label><br>
		<input type="text" name="varieties"><br>
       
        <input type="submit" value="Add">
        <br>
        <br>
           <form action="deleteFish.do" method="POST">
            <input type="hidden" name="fishId" value="${fish.id}">
            <button>Delete Fish</button>
            </form>
        </form> 
</div>
	<jsp:include page="../bootstrapFoot.jsp" />

</body>
</html>