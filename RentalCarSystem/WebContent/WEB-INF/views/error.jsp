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
<h3>Reservation creation failed! Please try again!</h3>
<li><a href="<spring:url value="/" />">Click here to go back to homepage</a></li>
<jsp:include page="/WEB-INF/views/footer.jsp"/>	
</body>
</html>