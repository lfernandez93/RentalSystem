<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rental Car System</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="<spring:url value="/resource/js/customer.js"/>"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
	<form class="semantic" action="<spring:url value="/j_spring_security_check"></spring:url>" method="post">
	<div>
	<label for="id">Id</label> <input id="id" name="j_username" type="text"/><br>
	</div>
	<div>
	<label for="password">Password</label><input id="j_password" name="j_password" type="password"/>
	</div>
	<br>
	<br>
	<div>
	<input type="submit" value="Log in">
	</div>
	</form>
<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body> 
</html>