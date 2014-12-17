<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<h1>Add New Vehicle</h1>
<form:form class="semantic" modelAttribute="newVehicle" enctype="multipart/form-data">
	<fieldset>
		<legend>
			Add a new Vehicle!
		</legend>

		<div>
			<label for="brand"><spring:message code="addVehicle.form.brand.label"/></label>
			<form:input id="brand" path="brand" type="text"/>
<%-- 			<form:errors path="brand" cssClass="text-danger"/> --%>
		</div>
		<div>
			<label for="type"><spring:message code="addVehicle.form.type.label"/></label>
			<input id="type" path="type" type="text"/>
<%-- 			<form:errors path="type" cssClass="text-danger"/> --%>
		</div>
		<div>
			<label for="model"><spring:message code="addVehicle.form.model.label"/></label>
			<input id="model" path="model" type="text"/>
<%-- 			<form:errors path="model" cssClass="text-danger"/> --%>
		</div>
		<div>
			<label for="plateNumber"><spring:message code="addVehicle.form.plateNumber.label"/></label>
			<input id="plateNumber" path="plateNumber" type="text"/>
<%-- 			<form:errors path="plateNumber" cssClass="text-danger"/> --%>
		</div>

		<div>
			<label for="description">Description</label>
			<textarea name="description" id="description" rows="2" cols="60"></textarea>
		</div>

		<div>
			<label for="price">Price $</label> 
			<input name="price" id="price" class="money" />
		</div>

		<div>
			<label for="pickupDate">Pickup Date</label> <input name="pickupDate"
				id="pickupDate" class="date" value="" /> <label	class="after">(MM/DD/YYYY)</label>
		</div>
	</fieldset>

	<div class="button-row">
		<input type="submit" value="Add" />
	</div>
</form:form>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>
