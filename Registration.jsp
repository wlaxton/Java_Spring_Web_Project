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
<title>Registration</title>
</head>
<body> 

	
    <form:form method="post" modelAttribute="register" action="/CS_4012_P2/userRegistration">
    
        <form:label path="username">Username</form:label><br />
        <form:input path="username" /><br />
        <br />
        <form:label path="password">Password</form:label><br />
        <form:input path="password" /><br />
        <br />
        <form:label path="firstname">First Name</form:label><br />
        <form:input path="firstname" /><br />
        <br />
        <form:label path="lastname">Last Name</form:label><br />
        <form:input path="lastname" /><br />
        <br />
        <form:label path="address1">Street Address 1</form:label><br />
        <form:input path="address1" /><br />
        <br />
        <form:label path="address2">Street Address 2</form:label><br />
        <form:input path="address2" /><br />
        <br />
        <form:label path="city">City</form:label><br />
        <form:input path="city" /><br />
        <br />
        <form:label path="state">State</form:label><br />
        <form:input path="state" /><br />
        <br />
        <form:label path="zip">Zip Code</form:label><br />
        <form:input path="zip" /><br />
        <br />
        <input type="submit" value="Register" />
    </form:form>


</body>
</html>