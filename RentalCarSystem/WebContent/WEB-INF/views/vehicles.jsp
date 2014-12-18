<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Rental Car System</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<h1>All Vehicles</h1>
	<p>All the Vehicles to rent</p>
	<div><table style="width:35%">
	<tr><td>
	<form action="vehicles/search" method="POST" class="semantic" >
	<input name="brand" id="brand" type="text"/></td><td><input type="submit" value="Search">
	</td></tr>
	<tr><td>
	</form>
	<br><br>
		</td></tr>
		<tr><td>
			<c:forEach items="${vehicles}" var="vehicle">
			<tr><td style="width:10%">
				<img src="<c:url value="/resource/images/${vehicle.plateNumber}.png"></c:url>" alt="image"  style = "width:100%"/>
				</td><td style="width:30%">
				<h3>${vehicle.brand}</h3>
				<p>${vehicle.type}, ${vehicle.model}, ${vehicle.year}, ${vehicle.seatQuantity}</p>
				</td><td style="width:10%">
				<div id="footer"><ul class="bottom">
				<security:authorize access="isAuthenticated()">
				<li><a href="<spring:url value="/vehicles/edit?id=${vehicle.vehicleId}" />">Edit</a></li>
			    <li><a href="<spring:url value="/vehicles/delete?id=${vehicle.vehicleId}" />">Delete</a></li>
			    </security:authorize>
			    <security:authorize access="isAnonymous()">
			    <li><a href="<spring:url value="/addreservation?id=${vehicle.vehicleId}" />">Reserve</a></li>
			    </security:authorize>
			    </ul></div>
			    </td></tr>
			    <tr><td colspan="3">
			    ------------------------------------------------------------------------------------
			    </td></tr>
			</c:forEach>
		</table></div>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>