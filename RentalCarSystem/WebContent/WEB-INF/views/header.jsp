<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<div>
<table border="0">
<tr>
<td align="right" style="width:30%"><img src="<c:url value="/resource/images/logo.jpg"></c:url>" alt="image"  style = "width:30%"/></td>
<td align="left">404 The Page Cannot be Found</td>
<td>
<div id="footer">
<ul class="bottom">
<li><a href="?language=en" >English</a>|
<li><a href="?language=es">Spanish</a>
</ul>					
</div>
</td>
<td>
<div id="footer">
  <ul class="bottom">
  
 

 <security:authorize access="isAuthenticated()">
  <li><a href="<spring:url value='/doLogout' />">Logout</a>
  </security:authorize>
   <security:authorize access="isAnonymous()">
  <li><a href="<spring:url value='/login/' />"> Login</a></li> 
   </security:authorize>
  </ul>
</div>
</td>

</tr>
</table>
</div>