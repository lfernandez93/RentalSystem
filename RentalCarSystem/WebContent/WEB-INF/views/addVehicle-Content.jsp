<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form class="semantic" method="post">
	<fieldset>
		<legend>
			Add a new Vehicle!
		</legend>

		<div>
			<label for="brand">Brand</label> <input type="text" name="title" id="title"/>
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
</form>



<%-- <jsp:include page="/WEB-INF/views/template.jsp">
	<jsp:param name="content" value="addVehicle-Content"/>
	<jsp:param name="title" value="Add Vehicle"/>
</jsp:include>
 --%>