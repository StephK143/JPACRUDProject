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

	<main class="container-fluid">

		<h1>Best beaches to live near!</h1>

		<form action="getBeach.do" method="GET">
			Beach Id: <input type="text" name="bid" /><input type="submit"
				class="btn btn-primary" value="Show Beach" />
		</form>

		<c:choose>
			<c:when test="${not empty beaches }">

				<table class="table table-stripe table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="b" items="${beaches }">

							 <tr>
								<td>${b.id }</td>
								<td><a href="getBeach.do?bid=${b.id}">${b.name}</a></td>
							</tr> 
						</c:forEach>
					</tbody>

				</table>



			</c:when>
		</c:choose>


	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>