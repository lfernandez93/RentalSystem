<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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
<c:set var="logedin" value="false"/>
  <ul class="bottom">
  <c:if test="${logedin}">
  <li>Login /
  <li><a href="/WEB-INF/views/logout.jsp">Logout</a>
  </c:if>
  <c:if test="${!logedin}">
  <li><a href="/WEB-INF/views/login.jsp">Login</a> |
  <li>Logout
  </c:if> 
  </ul>
</div>
</td>

</tr>
</table>
</div>