<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../bootstrapHead.jsp" />
<title>${beach.name}</title>
</head>
<body id="main">

	<jsp:include page="../navbar.jsp" />

	<h1   class="prettyHeaders"  >Beach Details</h1>

	<div>
			<table class="table table-stripe table-hover">
				<thead  class="prettyTitles" >
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Description</th>
						<th>Rating</th>
						<th>Sand Color</th>
						<th>Considered Tropical</th>

					</tr>
				</thead>

				<tbody>

					<tr>
						<td>${beach.id}</td>
						<td>${beach.name }</td>
						<td id="textwrap">${beach.description}</td>
						<td>${beach.rating}</td>
						<td>${beach.sandColor}</td>
						<td>${beach.consideredTropical}</td>
						<td>${beach.image}</td>

					</tr>

				</tbody>

			</table>


		</div>
		<div>
			<table class="table table-stripe table-hover">
				<thead  class="prettyTitles" >


					<th>Average Home Price</th>
					<th>Closest City</th>
					<th>Miles to ${beach.closestCity}</th>
					<th>Population of ${beach.closestCity}</th>
					<th>Type of government</th>


				</thead>
				<tbody>
					<tr>
						<td>$ ${beach.avgHomePrice}</td>
						<td>${beach.closestCity}</td>
						<td>${beach.milesToClosestCity}</td>
						<td>${beach.populationOfClosestCity}</td>
						<td>${beach.typeOfGovernment}</td>
					</tr>

				</tbody>

			</table>

		</div>

		<div>
						<a class="prettyTitles" >Weather in ${beach.name }</a>
			<table class="table table-stripe table-hover">
				<thead  class="prettyTitles" >
					<tr>

						<th rowspan="2">Highest Recorded temperature</th>
						<th rowspan="2">Lowest Recorded temperature</th>
						<th colspan="4">Average temperature by season</th>
						
					</tr>
					<tr>
						<th>Summer</th>
						<th>Fall</th>
						<th>Winter</th>
						<th>Spring</th>
					
					</tr>
					


				</thead>
				<tbody>
					<tr>
						<td>${beach.highestTemp}</td>
						<td>${beach.lowestTemp}</td>
						<td>${beach.avgSummerTemp}</td>
						<td>${beach.avgFallTemp}</td>
						<td>${beach.avgWinterTemp}</td>
						<td>${beach.avgSpringTemp}</td>
					</tr>

				</tbody>

			</table>

		</div>
	

	</div>
	
	<div>
	<table>
	<tr>
	<form action="updateBeach.do" method="GET">
		<input type="hidden" name="id" value="${beach.id}"/> <input type="submit"  value="Update Beach" class="button1" />
	</form>
	
	<form action="deleteBeach.do" method="POST">
		<input type="hidden" name="id" value="${beach.id}"/> <input type="submit"
			value="Delete Beach" class="button1" />
	</form>
	
	</tr>
	</table>
	</div>



	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>