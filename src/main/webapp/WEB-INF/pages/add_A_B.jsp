<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> -->


<html>
<head>
    <title>Transporters a Transportation Category Flat Bootstrap Responsive Website Template | Contact :: W3layouts</title>

    <link rel="stylesheet" href="<c:url value="/resources/res/css/bootstrap.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/style.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/font-awesome.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/window.css" />"/>


    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/autor_style.css" />"/>

    <link rel="stylesheet" href="<c:url value="/resources/css/table.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/modal.css" />" />
</head>
<body>
<div class="header">
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <h1><a href="index.html">Transporters</a></h1>
        </div>
        <div class="top-nav-text">
            <div class="nav-contact-w3ls"><i class="fa fa-phone" aria-hidden="true"></i><p>+375(44) 000-00-00</p></div>
        </div>
        <!-- navbar-header -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<c:url value="/users/currentUser"/>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        <c:choose>
                            <c:when test="${user.login ne null}">
                                ${user.login}
                            </c:when>
                            <c:otherwise>
                                Profile
                            </c:otherwise>
                        </c:choose>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <c:choose>
                            <c:when test="${user.login ne null}">
                                <li><a href="<c:url value="/exit"/>" target="_self">Log out</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="<c:url value="/autorization"/>" target="_self">Log in</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="<c:url value="/users"/>" target="_self">Sign in</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>

<div class="w3layouts-banner-top w3layouts-banner-top1">
    <div class="semilayer">
        <div class="mybody">
            <div class="container">
                <div class="article container">
                    <div class="row otstup">
                        <div class="col-md-12">
                            <h1 class="h2 page-header"
                                style="color:#8d1645; font-family: 'Lobster', cursive; margin-top: -1px;
                        text-align: center;">Target point/h1>
                            <section class="main">




                                <c:url var="addAction" value="/nextAB"/>

                                <form:form action="${addAction}" modelAttribute="mapsCarrier"  class="form-horizontal">

                                    <c:if test="${currentMaps eq 0}">

                                        <div class="form-group">
                                            <div>
                                                <label class="col-sm-2 control-label">
                                                    <spring:message text="Start point"/>
                                                </label>
                                                <label class="col-sm-2 control-label">
                                                    <spring:message text="Target point"/>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">
                                                <spring:message text="${routeCarrier.start}"/>
                                            </label>
                                            <div class="col-sm-2" class>
                                                <form:input path="endPointName" pattern="(.[a-zA-Zа-яА-Я\s,ёЁ_-]*)" title="Use latin latters" class="form-control"  />
                                            </div>
                                        </div>

                                    </c:if>


                                    <c:if test="${currentMaps ne 0 && currentMaps ne routeCarrier.quantity}">

                                        <div class="form-group">
                                            <div>
                                                <label class="col-sm-2 control-label">
                                                    <spring:message text="Start point"/>
                                                </label>
                                                <label class="col-sm-2 control-label">
                                                    <spring:message text="Target point"/>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">
                                                <spring:message text="${start}"/>
                                            </label>
                                            <div class="col-sm-2" class>
                                                <form:input path="endPointName" pattern="(.[a-zA-Zа-яА-Я\s,ёЁ_-]*)" title="Use latin latters" class="form-control"  />
                                            </div>
                                        </div>

                                    </c:if>

                                    <c:if test="${currentMaps eq routeCarrier.quantity}">

                                        <div class="form-group">
                                            <div>
                                                <label class="col-sm-2 control-label">
                                                    <spring:message text="Startvpoint"/>
                                                </label>
                                                <label class="col-sm-2 control-label">
                                                    <spring:message text="Target point"/>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">
                                                <spring:message text="${start}"/>
                                            </label>
                                            <label class="col-sm-2 control-label">
                                                <spring:message text="${routeCarrier.end}"/>
                                            </label>
                                        </div>

                                    </c:if>





                                    <div class="form-group">
                                        <form:label path="distance" class="col-sm-2 control-label">
                                            <spring:message text="Distance between points"/>
                                        </form:label>
                                        <div class="col-sm-4">
                                            <form:input path="distance" pattern="^[+]?([0-9]*[.])?[0-9]+$" title="Enter number." class="form-control"/>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <form:label path="nameOfTransport" class="col-sm-2 control-label">
                                            <spring:message text="Тип транспорта"/>
                                        </form:label>
                                        <div class="col-sm-4">
                                            <form:select path="nameOfTransport" class="form-control">
                                                <form:option value="Морской" />
                                                <form:option value="Железнодорожный" />
                                                <form:option value="Воздушный" />
                                                <form:option value="Автомобильный" />
                                            </form:select>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <form:label path="speed" class="col-sm-2 control-label">
                                            <spring:message text="Transport pace"/>
                                        </form:label>
                                        <div class="col-sm-4">
                                            <form:input path="speed" pattern="^[+]?([0-9]*[.])?[0-9]+$)" title="Введите число." class="form-control"/>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <form:label path="maxWeight" class="col-sm-2 control-label">
                                            <spring:message text="Вместимость транспорта"/>
                                        </form:label>
                                        <div class="col-sm-4">
                                            <form:input path="maxWeight" pattern="^[+]?([0-9]*[.])?[0-9]+$)" title="Введите число." class="form-control"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <form:label path="coefficient" class="col-sm-2 control-label">
                                            <spring:message text="Коэффициент"/>
                                        </form:label>
                                        <div class="col-sm-4">
                                            <form:input path="coefficient" pattern="^[+]?([0-9]*[.])?[0-9]+$)" title="Введите число." class="form-control"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <form:label path="CostForHour" class="col-sm-2 control-label">
                                            <spring:message text="Цена за час использования транпорта"/>
                                        </form:label>
                                        <div class="col-sm-4">
                                            <form:input path="costForHour" pattern="^[+]?([0-9]*[.])?[0-9]+$)" title="Введите число." class="form-control"/>
                                        </div>
                                    </div>
                                    <c:if test="${currentMaps ne routeCarrier.quantity}">

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="submit" class="btn btn-success"
                                                       value="<spring:message text="Продолжить"/>"/>
                                            </div>
                                        </div>
                                    </c:if>

                                    <c:if test="${currentMaps eq routeCarrier.quantity}">

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <input type="submit" class="btn btn-success"
                                                       value="<spring:message text="Готово"/>"/>
                                            </div>
                                        </div>
                                    </c:if>
                                </form:form>
                            </section>

                        </div>
                    </div>
                </div>
            </div>

        </div>
</div>

<script  src="${pageContext.request.contextPath}/resources/res/js/jquery-2.1.4.min.js"></script>
<script  src="${pageContext.request.contextPath}/resources/res/js/bootstrap.js"></script>


<!-- Раскомментировать для jsp -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.backstretch.min.js"></script>
</body>
</html>