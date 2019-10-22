<!--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
-->


<html>
<head>
    <title>Logistic</title>

    <link rel="stylesheet" href="<c:url value="/resources/res/css/bootstrap.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/style.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/font-awesome.css" />"/>
    <link rel="stylesheet" href="<c:url value="/resources/res/css/window.css" />"/>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/autor_style.css" />"/>

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
                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"><span
                            data-hover="ShortCodes">Profile</span><span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <c:choose>
                            <c:when test="${user.login ne null}">
                                <li><a href="<c:url value="/exit"/>" target="_self"><span
                                        data-hover="Icons">Log out</span></a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="<c:url value="/autorization"/>" target="_self"><span data-hover="Icons">Log in</span></a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="<c:url value="/users"/>" target="_self"><span
                                data-hover="Typograpghy">Sign in</span></a></li>
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
                        <div class="col-md-8">
                            <h1 class="h2 page-header"
                                style="color:#8d1645; font-family: 'Lobster', cursive; margin-top: -1px;
                        text-align: center;">System registration</h1>
                            <section class="main">
                                <c:url var="addAction" value="/autorization/add"/>

                                <form:form action="${addAction}" commandName="use" class="form-2">
                                    <table>
                                        <c:if test="${!empty user.login}">
                                            <tr>
                                                <td>
                                                    <form:label path="id">
                                                        <spring:message text="ID"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                                                    <form:hidden path="id"/>
                                                </td>
                                            </tr>
                                        </c:if>
                                        <tr>
                                            <p class="field">
                                                <form:label for="login" path="login">
                                                    <spring:message text="Login"/>
                                                </form:label>
                                                <form:input path="login" type="text" name="login"
                                                            pattern="[a-zA-Z](.[a-zA-Z0-9_-]*)"
                                                            title="Используйте латинские буквы для логина."
                                                            placeholder="Login or email"/>
                                                <i class="icon-user icon-large"></i>

                                            </p>
                                        </tr>

                                        <tr>
                                            <p class="field">
                                                <form:label for="password" path="password">
                                                    <spring:message text="Password"/>
                                                </form:label>
                                                <form:input path="password" type="password" name="password"
                                                            pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,12}$"
                                                            title="Введите от 4 до 12 латинских символов!"
                                                            placeholder="Password"/>
                                                <i class="icon-lock icon-large"></i>
                                            </p>
                                        </tr>

                                        <tr>
                                            <c:if test="${empty user.login}">
                                                <button type="submit" name="submit"
                                                        value="<spring:message text="Add User"/>">
                                                    <i class="icon-arrow-right"></i>
                                                    <span>Sign in</span>
                                                </button>
                                            </c:if>

                                        </tr>
                                    </table>
                                </form:form>
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

<script type="text/javascript">
    $(function () {
        $(".showpassword").each(function (index, input) {
            var $input = $(input);
            $("<p class='opt'/>").append(
                $("<input type='checkbox' class='showpasswordcheckbox' id='showPassword' />").click(function () {
                    var change = $(this).is(":checked") ? "text" : "password";
                    var rep = $("<input placeholder='Пароль' type='" + change + "' />")
                        .attr("id", $input.attr("id"))
                        .attr("name", $input.attr("name"))
                        .attr('class', $input.attr('class'))
                        .val($input.val())
                        .insertBefore($input);
                    $input.remove();
                    $input = rep;
                })
            ).append($("<label for='showPassword'/>").text("Показать пароль")).insertAfter($input.parent());
        });

        $('#showPassword').click(function () {
            if ($("#showPassword").is(":checked")) {
                $('.icon-lock').addClass('icon-unlock');
                $('.icon-unlock').removeClass('icon-lock');
            } else {
                $('.icon-unlock').addClass('icon-lock');
                $('.icon-lock').removeClass('icon-unlock');
            }
        });
    });

</script>
<!-- Раскомментировать для jsp -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.backstretch.min.js"></script>
</body>
</html>