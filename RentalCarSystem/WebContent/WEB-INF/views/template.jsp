
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>${param.title}</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<h1>Add vehicle</h1>

 	<jsp:include page="/WEB-INF/pages/${param.content}.jsp"/> 
	
	<jsp:include page="/WEB-INF/views/footer.jsp"/>
</body>
</html>
