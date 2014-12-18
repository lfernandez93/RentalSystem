<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservations</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<c:forEach items="${reservations}" var="reservation">
	<div class="semantic">
		<label for="DriverLicenseNumber"><b><spring:message code="ListReservation.pickupDate.label"/>=</b></label> 
		${reservation.pickupDate}
	</div>
	<div>
		<label for="firstName"><b><spring:message code="ListReservation.returnDate.label"/>=</b></label>
		${reservation.returnDate}
	</div>
	<div>
		<label for="lastName"><b><spring:message code="ListReservation.reservationDate.label"/>=</b></label>
		${reservation.reservationDate}
	</div>
	<div>
		<label for="address"><b><spring:message code="ListReservation.nameCustomer.label"/>=</b></label>
		${reservation.customer.person.firstName}+" "+${reservation.customer.person.lastName}
	</div>
	<br>
	<br>
	</c:forEach>
<jsp:include page="/WEB-INF/views/footer.jsp"/>	
</body>
</html>