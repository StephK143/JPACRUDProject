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
<body>

	<jsp:include page="../navbar.jsp" />

	<h1   class="prettyHeaders" >Beach Successfully added!</h1>

	<div>
	<table class="table table-stripe table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Description</th>
					<th>Closest City</th>
					<th>Average Home Price</th>
					
				</tr>
			</thead>

			<tbody>
				
							<tr>
								<td>${beach.id}</td>
								<td>${beach.name }</td>
								<td>${beach.description}</td>
								<td>${beach.closestCity}</td>
								<td>${beach.avgHomePrice}</td>
							</tr>
						
			</tbody>

		</table>
	

	</div>

	<form action="updateBeach.do" method="GET">
		<input type="hidden" name="id" value="${beach.id}"/> <input type="submit" value="Update Beach" class="button1" />
	</form>
	<br><br>
	<form action="deleteBeach.do" method="POST">
		<input type="hidden" name="id" value="${beach.id}"/> <input type="submit"
			value="Delete Beach" class="button1" />
	</form>



	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>