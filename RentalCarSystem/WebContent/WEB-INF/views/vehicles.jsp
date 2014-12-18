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
	
		<form:form class="semantic">
	<center><input name="model"  type="text"/>&nbsp;
	<input type="submit" value="Search"></center>
	</form:form>
		<div id="vehis"><table>
			<c:forEach items="${vehicles}" var="vehicle">
			<tr><td>
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
				</td><td>
				<div id="footer"><ul class="bottom">
				<security:authorize access="isAuthenticated()">
				<li><a href="<spring:url value="/vehicles/edit?id=${vehicle.vehicleId}" />">Edit</a></li>
			    <li><a href="<spring:url value="/vehicles/delete?id=${vehicle.vehicleId}" />">Delete</a></li>
			    </security:authorize>
			    <security:authorize access="isAnonymous()">
			    <li><a href="<spring:url value="/reservation/add?id=${vehicle.vehicleId}" />">Reserve</a></li>
			    </security:authorize>
			    </ul></div>
			    </td></tr>
			    <tr><td>
			    --------------------------------------------------------------------------------------------------------------
			    </td></tr>
			</c:forEach>
		</table></div>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>