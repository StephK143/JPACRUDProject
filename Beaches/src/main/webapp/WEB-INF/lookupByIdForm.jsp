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

		<form class="forms" action="getBeach.do" method="GET">
			Beach Id: <input type="text" name="bid" /><input type="submit"
				class="btn btn-primary" value="Show Beach" />
		</form>





	</main>
</body>

</html>



