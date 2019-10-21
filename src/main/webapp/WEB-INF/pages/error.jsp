<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="${sessionScope.locale}" scope="session"/>
<fmt:setBundle basename="pagecontent"/>

<html>
<head>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/style.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/font-awesome.css" />"/>
</head>
<style>
    body {
        background: url("<c:url value="/resources/res/images/error.jpg" />") no-repeat;
        background-size: 100%;
    }
</style>
<title>Error</title>
<body>
<div class="own-container">
    <div class="opacity-div">
    <br>
    <b>Error!!!)))</b>
    <p>
        <br>
        <b>Request is failed</b>
        <br>
        <b>Servlet name: </b>${pageContext.errorData.servletName}
        <br>
        <b>Status code:</b> ${pageContext.errorData.statusCode}
        <br>
        <b>Exception:</b> ${pageContext.exception}
        <br>
    </p>
    <a href="../../index.jsp" class="button">
        Back</a>
    </div>
</div>
</body>
</html>
