<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../bootstrapHead.jsp"/>
<title>Beach Details</title>
</head>
<body>

<jsp:include page="../navbar.jsp" />

<h1>Beach Details</h1>

<div>
	<h5>${beach.name }</h5>



</div>
	
	<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>