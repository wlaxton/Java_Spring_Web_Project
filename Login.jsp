<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
 
 
    <form:form method="post" modelAttribute="userlogin" action="/CS_4012_P2/user">
        <form:label path="username">Username</form:label><br />
        <form:input path="username" /><br />
        <br />
        <form:label path="password">Password:</form:label><br />
        <form:input path="password" /><br />
        <br />
        <input type="submit" value="Login" />
    </form:form>
    
	<form:form method="get" modelAttribute="register" action="/CS_4012_P2/userRegistrationForm">
        <input type="submit" value="Register" />
    </form:form>
    
        
</body>
</html>