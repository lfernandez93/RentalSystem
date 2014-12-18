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

	<div class="row">
		<c:forEach items="${reservations}" var="reservation">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
					<div class="caption">
						<h3>${reservation.customer.firstName} ${reservation.customer.lastName}</h3>
						<p>Reservation Number: ${reservation.reservationId}</p>
						<p>Pickup Date: ${reservation.pickupDate}</p>
						<p>Return Date: ${reservation.returnDate}</p>
						<p>Reservation Date: ${reservation.reservationDate}</p>
						<p>Status: ${reservation.status}</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>