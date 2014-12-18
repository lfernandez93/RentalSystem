<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Vehicle</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<h1>Search Vehicle by Brand</h1>
<form class="semantic" method="POST" action="search">
     <table><tr><td>
       	<div>
			<label for="brand"><spring:message code="addVehicle.form.brand.label"/></label>
			<input id="brand" name="brand" type="text"/>
		</div>
		</td></tr>
		<tr><td>
     <div class="button-row">
    <input type="submit" value="Search" />
    </div>
    </td></tr></table>
</form>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>