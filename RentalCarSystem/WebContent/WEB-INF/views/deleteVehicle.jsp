<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Vehicle</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<h1>Selected Vehicle</h1>
	<form:form class="semantic">
		<fieldset>
		<legend>
			Delete Selected Vehicle!
		</legend>
                <img src="<c:url value="/resource/images/${vehicle.plateNumber}.png"></c:url>" alt="image"  style = "width:10%"/>
				<h3>${vehicle.brand}</h3>
				<p>${vehicle.type}</p>
				<p>${vehicle.model}</p>
				<p>${vehicle.year}</p>
				<p>${vehicle.plateNumber}</p>
				<p>${vehicle.dailyPrice}USD</p>
				<p>${vehicle.fuelType}</p>
				<p>${vehicle.seatQuantity}</p>
				<p>${vehicle.condition}</p>
	</fieldset>
	<div class="button-row">
	    <input type="hidden" name="vehicleId" value="${vehicle.vehicleId}" />
		<input type="submit" value="Delete" />
	</div>
	
	</form:form>
				
	
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>