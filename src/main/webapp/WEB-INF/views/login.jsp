<%-- 
    Document   : login
    Created on : Mar 26, 2020, 1:42:56 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <c:set var="command" value=""/>
    <c:choose>
    <c:when test="${requestScope.seller ne null}">
    	<c:set var="command" value="seller"/>
    </c:when>
    <c:otherwise>
	    <c:set var="command" value="user"/>
    </c:otherwise>
    </c:choose>
    <body>
        <h3>Login!</h3>
        <form:form modelAttribute="${command}">
            Email <form:input path="email"/><form:errors path="email"></form:errors> <br/> <br/>
    		Password <form:password path="password"/><form:errors path="password"></form:errors> <br/><br/>
            <input type="submit" value="Log In"/>
        </form:form>
        <br/><br/>
        <a href="/edu/resetPassword.htm">Forgot Password?</a>
    </body>
</html>
