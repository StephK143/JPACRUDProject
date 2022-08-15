<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp" />
<title>Update beach information</title>
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<main class="container-fluid">



		<h2 class="prettyHeaders">Update info on your favorite beach:</h2>
		<form action="beachUpdated.do" method="POST" id="forms">

			<input type="hidden" name="id" value="${beach.id}" /> <label
				for="name">Name of Beach:</label><br> <input type="text"
				value="${beach.name}" name="name" /> <br> <label
				for="description">Description:</label><br> <input type="text"
				value="${beach.description}" name="description"> <br> <label
				for="rating">Rating on TripAdvisor:</label> <br> <select
				name="rating">
				<option value="${beach.rating}">${beach.rating}</option>
				<option value="1">1</option>
				<option value="1.5">1.5</option>
				<option value="2">2</option>
				<option value="2.5">2.5</option>
				<option value="3">3</option>
				<option value="3.5">3.5</option>
				<option value="4">4</option>
				<option value="4.5">4.5</option>
				<option value="5">5</option>
			</select> 
			
			<label for="sandColor">Color of Sand:</label> <br> 
				<select type="dropdown" name="sandColor" id="dropdown">
				<br>
				<option value="${beach.sandColor}">${beach.sandColor}</option>
				<option value="White sand">White sand</option>
				<option value="Black sand">Black sand</option>
				<option value="Rocky - mostly sand">Rocky - mostly sand</option>
				<option value="Rocky - mostly rocks">Rocky - mostly rocks</option>
				<option value="Sharp lava fields">Sharp lava fields</option>
				<option value="Other">Other</option>
			</select> <br> <br> 
			
			<label for="closestCity">Closest City:</label> <br>
			<input type="text" value="${beach.closestCity}" name="closestCity">
			<br> 
			<label for="consideredTropical">Is this beach considered to be tropical</label> <br>
			 <select type="dropdown" name="consideredTropical" id="dropdown">
						<option value="${beach.consideredTropical}">${beach.consideredTropical}</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
			</select><br>			
						
			<label for="avgHomePrice">Average Home Price:</label> <br> <input
				type="number" value="${beach.avgHomePrice}" name="avgHomePrice"><br>
			<br> <label for="milesToClosestCity">Miles to the
				closest city:</label><br> <input type="number"
				value="${beach.milesToClosestCity}" name="milesToClosestCity" /> <br>
			<label for="populationOfClosestCity">Population of the
				closest city:</label><br> <input type="number"
				value="${beach.populationOfClosestCity}"
				name="populationOfClosestCity"> <br> <label
				for="typeOfGovernment">Type of Government: </label> <br> <select
				type="dropdown" name="typeOfGovernment">
				<br>

				<option value="${beach.typeOfGovernment}">${beach.typeOfGovernment}</option>
				<option value="Democracy">Democracy</option>
				<option value="Monarchy">Monarchy</option>
				<option value="Republic">Republic</option>
				<option value="Communist">Communist</option>
				<option value="Dictatorship">Dictatorship</option>
			</select> <br> <br> <label for="highestTemp">Highest
				recorded Temperature: </label> <br> <input type="number"
				value="${beach.highestTemp}" name="highestTemp"> <br> <label
				for="lowestTemp">Lowest recorded Temperature: </label> <br> <input
				type="number" value="${beach.lowestTemp}" name="lowestTemp">
			<br> <label for="avgFallTemp">Average Temperature in the
				fall:</label> <br> <input type="number" value="${beach.avgFallTemp}"
				name="avgFallTemp"><br> <br> <label
				for="avgWinterTemp">Average Temperature in the winter:</label> <br>
			<input type="number" value="${beach.avgWinterTemp}"
				name="avgWinterTemp"><br> <br> <label
				for="avgSpringTemp">Average Temperature in the spring:</label> <br>
			<input type="number" value="${beach.avgSpringTemp}"
				name="avgSpringTemp"><br> <br> <label
				for="avgSummerTemp">Average Temperature in the summer:</label> <br>
			<input type="number" value="${beach.avgSummerTemp}"
				name="avgSummerTemp"><br> <br> <label for="region">Region:</label>
			<select type="dropdown" name="region" id="dropdown">
				<option value="${beach.region}">${beach.region}</option>
				<option value="2">South America</option>
				<option value="3">Europe</option>
				<option value="4">Africa</option>
				<option value="5">Asia</option>
				<option value="6">Australia</option>
			</select> <br> <br> <label for="image">Add an image URL</label> <input
				type="text" value="${beach.image}" name="image"> <br> <br>
			<br> <input type="submit" class="button1"
				value="Update Beach Info" />
		</form>


	</main>


</body>
</html>