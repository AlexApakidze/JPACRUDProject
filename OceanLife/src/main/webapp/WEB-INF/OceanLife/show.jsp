<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fish Details</title>

<jsp:include page="../bootstrapHead.jsp" />

</head>
<body>

	<jsp:include page="../navbar.jsp" />

	<div class="container-fluid">
		<!-- TODO more film details -->
		<h1>Fish Details</h1>
		<div>
			<h5>
				<img src="${fish.imageUrl}" alt="${fish.name}" width="300"
					height="200"><br>${fish.name}
			</h5>
			<br>
			<p>
				Where are they found?<br> ${fish.location }
			</p>
			<blockquote>
				Cool Facts: <br>${fish.specialAbilities}</blockquote>
			<p>
				Size info: <br>${fish.size }</p>
			<p>
				Diet:<br> ${fish.diet }
			</p>
			<p>
				Varieties: <br>${fish.varieties}</p>
		</div>
	</div>
<div>

	  

    <form action="editFish.do" method="POST">
        <input type="hidden" name="fishId" value="${fish.id}">
        
  <h2>Update ${fish.name}:</h2>
        
		
		<label for="name">Name:</label><br>
		<input type="text" name="name" value="${fish.name}" placeholder="Edit Name"><br>

		<label for="imageUrl">Image URL:</label><br>
		<input type="text" name="imageUrl" value="${fish.imageUrl}" placeholder="Edit Image URL"><br>

		<label for="location">Locations:</label><br>
		<input type="text" name="location" value="${fish.location}" placeholder="Edit Locations"><br>

		<label for="specialAbilities">Cool Facts:</label><br>
		<input type="text" name="specialAbilities" value="${fish.specialAbilities}" placeholder="Edit Special abilities"><br>

		<label for="size">Size:</label><br>
		<input type="text" name="size" value="${fish.size}" 
		placeholder="Edit Size"><br>

		<label for="diet">Diet:</label><br>
		<input type="text" name="diet" value="${fish.diet}" placeholder="Edit Diet"><br>

		<label for="varities">Varieties:</label><br>
		<input type="text" name="varieties" value="${fish.varieties}" placeholder="Edit Varieties"><br>
       
        <input type="submit" value="Update">
        <br>
        <br>
        </form> 
            <form action="deleteFish.do" method="POST">
            <input type="hidden" name="fishId" value="${fish.id}">
            <input type="submit" value="delete fish"/>    
            </form>
</div>
	<jsp:include page="../bootstrapFoot.jsp" />

</body>
</html>