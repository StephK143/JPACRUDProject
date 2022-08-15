<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of all beaches</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>

<body>

	<jsp:include page="../navbar.jsp" />

	<main class="container-fluid">

		<h1>List of all beaches</h1>

		<form action="getBeach.do" method="GET">
			Look up beach by id: <input type="text" name="bid" /><input
				type="submit" class="button" value="Show Beach details" />
		</form>
		<form>
		<a href="addBeach.do"><button type="button" value="addBeach"
				class="button1">Add Beach</button></a>
		</form>
		<form>
		<a href="listAll.do"><button type="button" value="listAll"
				class="button1">List All Beaches</button></a>
		</form>

		
		<table class="table table-stripe table-hover">
			<thead>
				<tr>

					<th>Name</th>
					<th>Description</th>
					<th>Closest City</th>
				</tr>
			</thead>

			<tbody>
				<c:choose>
					<c:when test="${not empty beaches}">
						<c:forEach var="b" items="${beaches }">

							<tr>

								<td><a href="getBeach.do?bid=${b.id}">${b.name} </a></td>
								<td>${b.description}</td>
								<td>${b.closestCity}</td>
							</tr>
						</c:forEach>

					</c:when>
				</c:choose>
			</tbody>

		</table>


	</main>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>