<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>

    <link rel="stylesheet" href="<c:url value="/resources/res/css/bootstrap.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/style.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/font-awesome.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/window.css" />"/>


    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/autor_style.css" />"/>

    <link rel="stylesheet" href="<c:url value="/resources/css/table.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/modal.css" />"/>
</head>
<body>
<div class="header">
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <h1><a href="../../index.jsp">Transporters</a></h1>
        </div>
        <div class="top-nav-text">
            <div class="nav-contact-w3ls"><i class="fa fa-phone" aria-hidden="true"></i>
                <p>+375(44) 000-00-00</p></div>
        </div>
        <!-- navbar-header -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="<c:url value="/users/currentUser"/>" class="dropdown-toggle" data-toggle="dropdown"
                       role="button" aria-expanded="false">
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
                        text-align: center;">Target point</h1>
                            <section class="main">

                                <c:if test="${!empty listRoutes}">
                                    <table class="tg">
                                        <tr>
                                            <th width="40">ID</th>
                                            <th width="240">Route name</th>
                                            <th width="120">Delivery price</th>
                                            <th width="120">Amount of transport types</th>
                                            <th width="120">Order</th>
                                        </tr>
                                        <c:forEach items="${listRoutes}" var="route">
                                            <tr>
                                                <td>${route.idRoute}</td>
                                                <td>${route.nameOfRoute}</td>
                                                <td>${route.price}</td>
                                                <td>${route.description}</td>
                                                <td>
                                                    <a style="color: green"
                                                       href="https://ibank.asb.by/wps/portal/ibank/Home/login/">Order</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                </c:if>

                                <c:if test="${empty listRoutes}">
                                    <div class="headname">
                                        <h1>Route do not exists, yet</h1>
                                    </div>
                                </c:if>

                                <c:url var="addAction" value="/client/showClient"/>


                            </section>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/resources/res/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/res/js/bootstrap.js"></script>


<!-- Раскомментировать для jsp -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.backstretch.min.js"></script>
</body>
</html>