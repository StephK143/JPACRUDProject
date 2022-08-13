<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Beach to the database</title>
</head>
<body>

<main class="container-fluid">



				<h2 class="forms">Add your favorite beach:</h2>
				<form action="beachAdded.do" method="POST">
			
					<label for="name">Name of Beach:</label><br>
						<input type="text" name="name" required /> <br> 
					<label for="description">Description:</label><br> 
						<input type="text" name="description"> <br> 
					<label for="rating">Rating on TripAdvisor:</label> <br> 
						<input type="number" name="rating"> <br> 
					<label for="sandColor">Color of Sand:</label> <br> 
						<input type="text" name="sandColor" > <br> 
					<label for="closestCity">Closest City:</label> <br> 
						<input type="text" name="closestCity" > <br>
					<label for="consideredTropical">Is this beach considered to be tropical</label> <br> 
						<select name="consideredTropical" id="dropdown"> 
							<option value="true">Yes</option>
							<option value="false">No</option>
						</select> <br><br>
					<label for="avgHomePrice">Average Home Price:</label> <br> 
						<input type="number" name="avgHomePrice"><br> <br> 
					<label for="milesToClosestCity">Miles to the closest city:</label><br>
						<input type="number" name="milesToClosestCity"/> <br> 
					<label for="populationOfClosestCity">Population of the closest city:</label><br> 
						<input type="number" name="populationOfClosestCity"> <br> 
					<label for="highestTemp">Highest recorded Temperature: </label> <br> 
						<input type="number" name="highestTemp"> <br> 
					<label for="lowestTemp">Lowest recorded Temperature: </label> <br> 
						<input type="number" name="lowestTemp"> <br> 
					<label for="typeOfGovernment">Type of Government: </label> <br> 
						<select name="typeOfGovernment" id="radio"> <br> 
							<option value="Democracy">Democracy</option>
							<option value="Monarchy">Monarchy</option>
							<option value="Republic">Republic</option>
							<option value="Communist">Communist</option>
							<option value="Dictatorship">Dictatorship</option>
						</select> <br><br>
						
					<label for="avgFallTemp">Average Temperature in the fall:</label> <br> 
						<input type="number" name="avgFallTemp"><br> <br> 
					<label for="avgWinterTemp">Average Temperature in the winter:</label> <br> 
						<input type="number" name="avgWinterTemp"><br> <br> 		
					<label for="avgSpringTemp">Average Temperature in the spring:</label> <br> 
						<input type="number" name="avgSpringTemp"><br> <br> 
					<label for="avgSummerTemp">Average Temperature in the summer:</label> <br> 
						<input type="number" name="avgSummerTemp"><br> <br> 
					<label for="region">Region:</label>
						<select name="region" id="dropdown">
							<option value="1">North America</option>
							<option value="2">South America</option>
							<option value="3">Europe</option>
							<option value="4">Africa</option>
							<option value="5">Asia</option>
							<option value="6">Australia</option>
						</select> <br><br>
					<br>
					<br> <input type="submit" class="btn btn-primary" value="Add Beach"/>
				</form>
		
		


	
</main>

</body>
</html>