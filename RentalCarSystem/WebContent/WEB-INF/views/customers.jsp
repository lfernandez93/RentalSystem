<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="<spring:url value="/resource/js/customer.js"/>"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<c:forEach items="${customers}" var="customer">
	<div class="semantic">
		<label for="DriverLicenseNumber"><b><spring:message code="addCustomer.form.DriverLicenseNumber.label"/>=</b></label> 
		${customer.driverLicenseNumber}
	</div>
	<div>
		<label for="firstName"><b><spring:message code="addCustomer.form.firstName.label"/>=</b></label>
		${customer.person.firstName}
	</div>
	<div>
		<label for="lastName"><b><spring:message code="addCustomer.form.lastName.label"/>=</b></label>
		${customer.person.lastName}
	</div>
	<div>
		<label for="address"><b><spring:message code="addCustomer.form.address.label"/>=</b></label>
		${customer.person.address}
	</div>
	<div>
		<label for="phoneNumber"><b><spring:message code="addCustomer.form.phoneNumber.label"/>=</b></label>
		${customer.person.phoneNumber}
	</div>
	<div>
		<label for="nationality"><b><spring:message code="addCustomer.form.nationality.label"/>=</b></label>
		${customer.person.nationality}
	</div>
	<br>
	<br>
	</c:forEach>
<jsp:include page="/WEB-INF/views/footer.jsp"/>	
</body>
</html>