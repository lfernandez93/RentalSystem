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
<script type="text/javascript" src="<spring:url value="/resource/js/customer.js"/>"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
				
	<form:form class="semantic"	modelAttribute="newCustomer">
		<fieldset>
			<legend>
 			<spring:message code="addCustomer.form.legend"/> 
			</legend>
			<div>
			<form:errors path="*"/>
			</div>
			<div>
			<div id="errorRest"></div>
		<span hidden id="idCustomer"></span>
			<label for="DriverLicenseNumber"><spring:message code="addCustomer.form.DriverLicenseNumber.label"/></label>
			<form:input  onkeyup="searchCustomer()" id="driverLicenseNumber" path="driverLicenseNumber" type="text"/>
			<form:errors path="driverLicenseNumber"/> 
			</div>			
			<div>
			<label for="firstName"><spring:message code="addCustomer.form.firstName.label"/></label>
			<form:input id="firstName" path="person.firstName" type="text"/>
			<form:errors path="person.firstName"/>
			</div>
			<div>
			<label for="lastName"><spring:message code="addCustomer.form.lastName.label"/></label>
			<form:input id="lastName" path="person.lastName" type="text"/>
			<form:errors path="person.lastName"/>
			</div>
			<div>
			<label for="address"><spring:message code="addCustomer.form.address.label"/></label>
			<form:input id="address" path="person.address" type="text"/>
			<form:errors path="person.address"/>
			</div>
			<div>
			<label for="phoneNumber"><spring:message code="addCustomer.form.phoneNumber.label"/></label>
			<form:input id="phoneNumber" path="person.phoneNumber" type="text"/>
			<form:errors path="person.phoneNumber"/>
			</div>
			<div>
			<label for="nationality"><spring:message code="addCustomer.form.nationality.label"/></label>
			<form:input id="nationality" path="person.nationality" type="text"/>
			<form:errors path="person.nationality"/>
			</div>
			<br>
		</fieldset>
		<input type="submit" value="<spring:message code="addCustomer.form.button.submit"/>">
	</form:form>	
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>