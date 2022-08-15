<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Beaches!</title>
<jsp:include page="bootstrapHead.jsp" />
</head>

<body>

	<jsp:include page="navbar.jsp" />
	<main>
		<table>
			<thead>
				<tr>
					<h1 class="prettyHeaders">Best beaches to live near!</h1>
				</tr>
			</thead>
			<br>
			<br>
			<tr>
				<form action="getBeach.do" method="GET">
					Look up beach by id: <input type="text" name="bid" /><input
						type="submit" class="button1" value="Show Beach details" />
				</form>


				<form>
					<a href="addBeach.do"><button type="button" value="addBeach"
							class="button1">Add Beach</button></a>
				</form>
				<form>
					<a href="listAll.do"><button type="button" value="listAll"
							class="button1">List All Beaches</button></a>
				</form>
			</tr>

			<br>
			<br>
			<tr>
				<h1 class="prettyHeaders">Click the beach below for more
					details</h1>
			</tr>
			<br>
			<br>

		</table>

		<table class="table table-stripe table-hover">
			<thead>
				<tr>
					<th></th>
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


	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>