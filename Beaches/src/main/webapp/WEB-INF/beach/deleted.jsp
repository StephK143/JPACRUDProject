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

	<main class="container-fluid" id="main">


		<table>
			<thead>
				<tr>
					<h1 class="prettyHeaders">Beach Deleted Successfully!</h1>
				</tr>
			</thead><br><br>

			<form action="getBeach.do" method="GET">
				Look up beach by id: <input type="text" name="bid" /><input
					type="submit" class="button1" value="Show Beach details" />
			</form>

			<tr>
				<form>
					<a href="addBeach.do"><button type="button" value="addBeach"
							class="button1">Add Beach</button></a>
				</form>
				<form>
					<a href="listAll.do"><button type="button" value="listAll"
							class="button1">List All Beaches</button></a>
				</form>

			</tr>


		</table>
	</main>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>