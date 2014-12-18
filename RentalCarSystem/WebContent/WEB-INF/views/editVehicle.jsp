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
	<h1>Edit Vehicle</h1>
<form:form class="semantic" modelAttribute="editVehicle" enctype="multipart/form-data">
<form:errors path="*" cssClass="errorblock" element="div"/>
	<fieldset>
		<legend>
			Edit selected Vehicle!
		</legend>

		<div>
			<label for="brand"><spring:message code="addVehicle.form.brand.label"/></label>
			<form:input id="brand" path="brand" type="text" value="${vehicle.brand}"/>
			<form:errors path="brand" cssClass="error"/>
    	</div>
    	    <form:input id="vehicleId" path="vehicleId" type="hidden" value="${vehicle.vehicleId}"/>
		<div>
			<label for="type"><spring:message code="addVehicle.form.type.label"/></label>
			<form:select id="type" path="type">
			<form:option value="NONE" label="--- Select ---"/>
			<form:option  value="sedan" label="Sedan"/>
			<form:option value="wagon" label="Wagon"/>
			<form:option value="crossover" label="Crossover"/>
			<form:option value="luxury" label="Luxury"/> <!-- <c:if test="${vehicle.type eq 'luxury'}">selected="selected"</c:if> -->
			<form:option value="coupe" label="Coupe"/>
			<form:option value="hatchback" label="Hatchback"/>
			<form:option value="suv" label="SUV"/>
			<form:option value="hybrid" label="Hybrid"/>
			<form:option value="convertible" label="Convertible"/>
			<form:option value="pickup" label="Pickyp"/>
			<form:option value="van" label="Van"/>
			<form:option value="minivan" label="Minivan"/>
			<form:option value="electonic" label="Electronic"/>
			</form:select>
			<form:errors path="type" cssClass="error"/>
        </div>
		<div>
			<label for="model"><spring:message code="addVehicle.form.model.label"/></label>
			<form:input id="model" path="model" type="text" value="${vehicle.model}"/>
			<form:errors path="model" cssClass="error"/>
		</div>
		<div>
			<label for="plateNumber"><spring:message code="addVehicle.form.plateNumber.label"/></label>
			<form:input id="plateNumber" path="plateNumber" type="text" value="${vehicle.plateNumber}"/>
			<form:errors path="plateNumber" cssClass="error"/>
		</div>
		<div>
			<label for="dailyPrice"><spring:message code="addVehicle.form.dailyPrice.label"/></label>
			<form:input id="dailyPrice" path="dailyPrice" type="text" value="${vehicle.dailyPrice}"/>
			<form:errors path="dailyPrice" cssClass="error"/>
		</div>
		<div>
			<label for="year"><spring:message code="addVehicle.form.year.label"/></label>
			<form:input id="year" path="year" type="text" value="${vehicle.year}"/>
			<form:errors path="year" cssClass="error"/>
		</div>		
		<div>
			<label for="fuelType"><spring:message code="addVehicle.form.fuelType.label"/></label>
			<form:input id="fuelType" path="fuelType" type="text" value="${vehicle.fuelType}"/>
			<form:errors path="fuelType" cssClass="error"/>
		</div>
		<div>
			<label for="seatQuantity"><spring:message code="addVehicle.form.seatQuantity.label"/></label>
			<form:input id="seatQuantity" path="seatQuantity" type="text" value="${vehicle.seatQuantity}"/>
			<form:errors path="seatQuantity" cssClass="error"/>
		</div>						
		<div>
			<label for="condition"><spring:message code="addVehicle.form.condition.label"/></label>
			<textarea name="condition" id="condition" rows="3" cols="60">${vehicle.condition}</textarea>
		</div>
<!--   	    <div> -->
<%-- 			<label for="vehicleImage"><spring:message code="addVehicle.form.vehicleImage.label"/></label> --%>
<%-- 			<form:input id="vehicleImage" path="vehicleImage" type="file" /> --%>
<!-- 		</div> -->
		
	</fieldset>

	<div class="button-row">
		<input type="submit" value="Edit" />
	</div>
</form:form>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>
