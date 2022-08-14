<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Beaches!</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>

<body>

	<jsp:include page="../navbar.jsp" />

	<main class="container-fluid">

		<h1>Beach Updated Successfully!</h1>

		
		<a href="addBeach.do"><button type="button" value="addBeach"
				class="btn btn-primary">Add Beach</button></a>

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


	</main>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>