<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<%-- <script type="text/javascript" src="<spring:url value="/resource/js/reservation.js"/>"></script> --%>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<form:form class="semantic"	modelAttribute="newReservation">
		<fieldset>
			<legend>
 			<spring:message code="addReservation.legend.label"/> 
			</legend>
			<div>
			<form:errors path="*"/>
			</div>
			<div>
			<label for="DriverLicenseNumber"><spring:message code="addReservation.form.DriverLicenseNumber.label"/></label>
			<form:input id="driverLicenseNumber" path="customer.driverLicenseNumber" type="text"/>
			<form:errors path="customer.driverLicenseNumber"/>
			</div>			
			<div>
			<label for="firstName"><spring:message code="addReservation.form.firstName.label"/></label>
			<form:input id="firstName" path="customer.person.firstName" type="text"/>
			<form:errors path="customer.person.firstName"/>
			</div>
			<div>
			<label for="lastName"><spring:message code="addReservation.form.lastName.label"/></label>
			<form:input id="lastName" path="customer.person.lastName" type="text"/>
			<form:errors path="customer.person.lastName"/>
			</div>
			<div>
			<label for="address"><spring:message code="addReservation.form.address.label"/></label>
			<form:input id="address" path="customer.person.address" type="text"/>
			<form:errors path="customer.person.address"/>
			</div>
			<div>
			<label for="phoneNumber"><spring:message code="addReservation.form.phoneNumber.label"/></label>
			<form:input id="phoneNumber" path="customer.person.phoneNumber" type="text"/>
			<form:errors path="customer.person.phoneNumber"/>
			</div>
			<div>
			<label for="nationality"><spring:message code="addReservation.form.nationality.label"/></label>
			<form:input id="nationality" path="customer.person.nationality" type="text"/>
			<form:errors path="customer.person.nationality"/>
			</div>
			<br>
			
			<div>
			<form:hidden id="vehicle" path="vehicle" value="${vehicle}" />
			<form:errors path="vehicle"/>
			</div>
			
			<div>
			<label for="pickupDate"><spring:message code="addReservation.form.pickupDate.label"/></label>
			<form:input id="pickupDate" path="pickupDate" type="date"/>
			<form:errors path="pickupDate"/>
			</div>
			
			<div>
			<label for="returnDate"><spring:message code="addReservation.form.returnDate.label"/></label>
			<form:input id="returnDate" path="returnDate" type="date"/>
			<form:errors path="returnDate"/>
			</div>
			
			<div>
			<label for="reservationDate"><spring:message code="addReservation.form.reservationDate.label"/></label>
			<form:input id="reservationDate" path="reservationDate" type="date"/>
			<form:errors path="reservationDate"/>
			</div>
			
			<div>
			<form:hidden id="status" path="status" value="Pending"/>
			<form:errors path="status"/>
			</div>
			
			<input type="submit" value="<spring:message code="addReservation.form.button.submit"/>">
		</fieldset>
	</form:form>	
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>